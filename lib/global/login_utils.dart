// ================= Login and SignUp Functions =================
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/material.dart';
import 'package:balance_me/global/dispatcher.dart';
import 'package:balance_me/firebase_wrapper/auth_repository.dart';
import 'package:balance_me/firebase_wrapper/sentry_repository.dart';
import 'package:balance_me/global/utils.dart';
import 'package:balance_me/localization/resources/resources.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:balance_me/firebase_wrapper/storage_repository.dart';
import 'package:balance_me/firebase_wrapper/google_analytics_repository.dart';
import 'package:balance_me/common_models/balance_model.dart';
import 'package:balance_me/global/types.dart';

void signInGoogle(BuildContext context, AuthRepository authRepository,UserStorage userStorage, {VoidCallback? failureCallback}) async {
  startLoginProcess(context, authRepository.signInGoogle(context,true), LoginMethod.Google.toCleanString(), true, userStorage, failureCallback: failureCallback);
}

void signInFacebook(BuildContext context, AuthRepository authRepository, UserStorage userStorage, {VoidCallback? failureCallback}) async {
  startLoginProcess(context, authRepository.signInWithFacebook(context,true), LoginMethod.Facebook.toCleanString(), true, userStorage, failureCallback: failureCallback);
}

void signUpGoogle(BuildContext context, AuthRepository authRepository, UserStorage userStorage, {VoidCallback? failureCallback}) async {
  startLoginProcess(context, authRepository.signInGoogle(context,false), LoginMethod.Google.toCleanString(), false, userStorage, failureCallback: failureCallback);
}

void signUpFacebook(BuildContext context, AuthRepository authRepository, UserStorage userStorage, {VoidCallback? failureCallback}) async {
  startLoginProcess(context, authRepository.signInWithFacebook(context,false), LoginMethod.Facebook.toCleanString(), false, userStorage, failureCallback: failureCallback);
}

void emailPasswordSignUp(String? email, String? password, String? confirmPassword, BuildContext context, AuthRepository authRepository, UserStorage userStorage, {VoidCallback? failureCallback}) async {
  if (email == null || password == null || confirmPassword == null) {
    displaySnackBar(context, Languages.of(context)!.strMissingFields);
    return;
  }
  if (password != confirmPassword) {
    displaySnackBar(context, Languages.of(context)!.strMismatchingPasswords);
    return;
  }
  startLoginProcess(context, authRepository.signUp(email, password, context), LoginMethod.Regular.toCleanString(), false, userStorage, failureCallback: failureCallback);
}

void emailPasswordSignIn(String? email, String? password, BuildContext context, AuthRepository authRepository, UserStorage userStorage, {VoidCallback? failureCallback}) async {
  if (email == null || password == null) {
    displaySnackBar(context, Languages.of(context)!.strMissingFields);
    return;
  }
  startLoginProcess(context, authRepository.signIn(email, password, context), LoginMethod.Regular.toCleanString(), true, userStorage, failureCallback: failureCallback);
}

void recoverPassword(String? email, BuildContext context, Function? failureCB) async {
  if (email == null) {
    displaySnackBar(context, Languages.of(context)!.strUserNotFound);
    return;
  }

  FirebaseAuth recover = FirebaseAuth.instance;

  try {
    await recover.sendPasswordResetEmail(email: email);
    navigateBack(context);
    displaySnackBar(context, Languages.of(context)!.strEmailSent);
    GoogleAnalytics.instance.logRecoverPassword();

  } catch (e, stackTrace) {
    SentryMonitor().sendToSentry(e, stackTrace);
    displaySnackBar(context, Languages.of(context)!.strUserNotFound);
    failureCB != null ? failureCB() : null;
  }
}

void startLoginProcess(BuildContext context, Future<bool> loginFunction, String loginFunctionName, bool isSigningIn, UserStorage userStorage, {VoidCallback? failureCallback}) async {
  final FirebasePerformance performance = FirebasePerformance.instance;
  Trace performanceTrace = await performance.newTrace("${isSigningIn ? "Login" : "SignUp"}Via$loginFunctionName");
  await performanceTrace.start();

  GeneralInfoDispatcher.reset();
  BalanceModel lastBalance = userStorage.balance.copy();
  if (await loginFunction) {

    Future.delayed(const Duration(milliseconds: 10), () async {
      if (isSigningIn) {
        await userStorage.GET_generalInfo(context);
        userStorage.SEND_balanceModelAfterLogin(lastBalance);
        GoogleAnalytics.instance.logLogin(loginFunctionName);
      } else {
        await userStorage.SEND_fullBalanceModel(balance: lastBalance);
        GeneralInfoDispatcher.reset();
        userStorage.SEND_initialUserDoc();
        userStorage.SEND_resetUserMessages();
        GoogleAnalytics.instance.logSignUp(loginFunctionName);
      }

      navigateBack(context);
      await performanceTrace.stop();
    });

  } else if (failureCallback != null) {
    failureCallback();
  }
}
