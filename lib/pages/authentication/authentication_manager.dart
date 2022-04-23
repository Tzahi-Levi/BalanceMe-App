// ================= Authentication Manager =================
import 'package:flutter/material.dart';
import 'package:balance_me/firebase_wrapper/auth_repository.dart';
import 'package:balance_me/firebase_wrapper/storage_repository.dart';
import 'package:balance_me/localization/resources/resources.dart';
import 'package:balance_me/widgets/appbar.dart';
import 'package:balance_me/widgets/generic_tabs.dart';
import 'package:balance_me/pages/authentication/login.dart';
import 'package:balance_me/pages/authentication/sign_up.dart';
import 'package:balance_me/global/constants.dart' as gc;

class AuthenticationManager extends StatefulWidget {
  const AuthenticationManager(this._authRepository,this._userStorage,{Key? key}) : super(key: key);
  final AuthRepository _authRepository;
  final UserStorage _userStorage;

  @override
  _AuthenticationManagerState createState() => _AuthenticationManagerState();
}

class _AuthenticationManagerState extends State<AuthenticationManager> {
  int appBarChoice = 0;

  void changeAppbar(int tabIndex) {
    setState(() {
      appBarChoice = tabIndex;
    });
  }

  List<String> getTabNames() {
    return [Languages.of(context)!.strLogin, Languages.of(context)!.strSignUp];
  }

  List<Widget> loginTabBarView() {
    return [
       LoginScreen(widget._authRepository,widget._userStorage),
       SignUp(widget._authRepository,widget._userStorage),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: gc.loginTabs,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: appBarChoice == 0 ? MinorAppBar(Languages.of(context)!.strLogin) : MinorAppBar(Languages.of(context)!.strSignUp),
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: TabGeneric(getGenericTabs(getTabNames()), loginTabBarView(), onSwitch: changeAppbar)),
      ),
    );
  }
}
