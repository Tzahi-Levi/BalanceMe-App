// ================= A Class For English Language =================
import 'package:balance_me/localization/resources/resources.dart';
import 'package:balance_me/global/constants.dart' as gc;

class LanguageEn extends Languages {

  // General
  @override
  String get languageName => "English";

  @override
  String get languageCode => "en";

  @override
  String get languageDirection => gc.ltr;

  @override
  String get strAppName => "BalanceMe";

  @override
  String get strAppTitle => "BalanceMe";

  @override
  String get strEssentialField => "this is an essential field";

  @override
  String get strMaxCharactersLimit => "The maximum number of characters is %";

  @override
  String get strMustPositiveNum => "The number must be above 0";

  @override
  String get strYes => "Yes";

  @override
  String get strNo => "No";

  @override
  String get strDate =>"Date";

  @override
  String get strAdd =>"Add";

  @override
  String get strRemoved =>"removed";

  @override
  String get strChanged =>"changed";

  @override
  String get strSet =>"Set";

  @override
  String get strClose =>"Close";

  @override
  String get strInvite =>"Invite";

  @override
  String get strResend =>"Resend";

  @override
  String get strApprove =>"Approve";

  @override
  String get strReject =>"Reject";

  @override
  String get strProblemOccurred =>"Problem occurred, please try again later";

  @override
  String get strHide =>"Hide";

// Settings
  @override
  String get strProfile => "Profile";

  @override
  String get strProfileSettings => "Profile Settings";

  @override
  String get strPasswordSettings => "Change Password";

  @override
  String get strEndOfMonthSettings => "End of month";

  @override
  String get strCurrencySettings => "Currency";

  @override
  String get strLanguageSettings => "Language";

  @override
  String get strDarkModeSettings => "Dark Mode";

  @override
  String get strVersionSettings => "Version";

  @override
  String get strNewPassword => "New Password";

  @override
  String get strPasswordUpdate => "Type in a new password for your user";

  @override
  String get strFinish => "FINISH";

  @override
  String get strFirstName => "First name";

  @override
  String get strLastName => "Last name";

  @override
  String get strFirstNameLabel => "Enter first name";

  @override
  String get strLastNameLabel => "Enter last name";

  @override
  String get strWeakPassword => "Your password is too weak, type in a stronger password";

  @override
  String get strNotSignedIn => "No signed in account found. make sure you are registered and logged in and try again";

  @override
  String get strSignInTimeout => "Password change failed. sign in and try again";

  @override
  String get strLanguage => "language";

  @override
  String get strTheme => "theme";

  @override
  String get strBeforeChangeAlertDialogContent => "Attention:\nChange % might reset all your data. For saving the data, please log-in or sign up first.\nAre you sure you want to change the %?";

  @override
  String get strEndOfMonthInfo => "This is the day when your balance data is sent to the archive";

  @override
  String get strConstants => "Constant settings:";

  @override
  String get strInviteFriend => "Invite a friend";

  @override
  String get strInviteFriendContent => "You are welcome to try a perfect app that will allow you to keep track of your budgets, manage incomes and expenses easily, and compare your spending with previous months with our intuitive archive.\n%";

  @override
  String get strInviteFriendSubject => "Try BalanceMe App";


  @override
  String get strDeleteProfile => "Delete profile image";

  @override
  String get strDeleteProfileFailed => "Delete failed because you have no profile image";

  @override
  String get strDeleteProfileAlert => "Are you sure you want to delete your profile image?";

  @override
  String get strUpdate => "UPDATE";
// Login
  @override
  String get strWelcomeBack => "Welcome Back!";

  @override
  String get strWelcomeAboard => "Welcome Aboard!";

  @override
  String get strLogin => "Login";

  @override
  String get strLogout => "Logout";

  @override
  String get strSuccessfullyLogout => "Successfully logged out";

  @override
  String get strSignUp => "Sign Up";

  @override
  String get strEmailText => "Email";

  @override
  String get strPassword => "Password";

  @override
  String get strForgotPassword => "FORGOT PASSWORD";

  @override
  String get strSignIn => "SIGN IN";

  @override
  String get strUserNotFound => "User not found";

  @override
  String get strMissingFields => "To sign up, you must type in both your email and password";

  @override
  String get strConfirmPassword => "Confirm Password";

  @override
  String get strMismatchingPasswords => "Passwords don't match";

  @override
  String get strChangePasswordSuccess => "Password successfully changed";

  @override
  String get strProfileUpdateSuccessful => "Profile successfully updated";

  @override
  String get strNoImagePicked => "You haven't picked an image. pick an image to change your avatar";

  @override
  String get strGalleryOption => "Gallery";

  @override
  String get strCameraOption => "Camera";

  @override
  String get strMinPasswordLimit => "Password length should be at least %";

  @override
  String get strBadEmail => "Your email is badly formed";

  @override
  String get strIncorrectPassword => "The password you typed in doesn't match to your email";

  @override
  String get strEmailInUse => "An account with this email already exists, choose another";

  @override
  String get strTooManyProviders => "You can't link more than two accounts to this email";

  @override
  String get strLinkProviderError => "An account with this email already exists under a different provider";

  @override
  String get strSignUpWith => "Sign up with %";

  @override
  String get strLoginWith => "Login with %";

  @override
  String get strGoogle => "Google";

  @override
  String get strFacebook => "Facebook";

  // Password Recovery
  @override
  String get strRecoverPassword => "Password recovery";

  @override
  String get strForgotPasswordLink => "Forgot your password?";

  @override
  String get strConfirmEmail => "Confirm your email and we'll send the instructions";

  @override
  String get strSend => "SEND";

  @override
  String get strEmailSent => "Email sent";

  // Navigation
  @override
  String get strBalance => "Balance";

  @override
  String get strArchive => "Archive";

  @override
  String get strSettings => "Settings";

  // Charts
  @override
  String get strAvailable => "Available";

  // Balance
  @override
  String get strNothingToShow => "There is nothing to show here";

  @override
  String get strBalanceInfo => "Here you can manage your income and expenses.";

  @override
  String get strToGetStartedInfo => "For saving your data and enjoying the full functionality, please log-in.";

  @override
  String get strExpense => "Expense";

  @override
  String get strExpenses => "Expenses";

  @override
  String get strIncome => "Income";

  @override
  String get strIncomes => "Incomes";

  @override
  String get strCurrent => "Current";

  @override
  String get expected => "Expected";

  @override
  String get strCategory => "category";

  @override
  String get strAddCategory => "Add Category";

  @override
  String get strTransaction => "transaction";

  @override
  String get strAddTransaction => "Add Transaction";

  @override
  String get strEditCategory => "Edit Category";

  @override
  String get strDetailsCategory => "Category Details";

  @override
  String get strEditTransaction => "Edit Transaction";

  @override
  String get strDetailsTransaction => "Transaction Details";

  @override
  String get strCategoryName => "Category Name";

  @override
  String get strTransactionName => "Transaction Name";

  @override
  String get strAddDescription => "Add Description... (optional)";

  @override
  String get strEmptyDescription => "There is no description";

  @override
  String get strBack => "Back";

  @override
  String get strSave => "SAVE";

  @override
  String get strSaveSucceeded => "The % has been saved successfully";

  @override
  String get strRemoveSucceeded => "The % has been removed successfully";

  @override
  String get strAlreadyExist => "The % already exists";

  @override
  String get strDelete => "Delete %";

  @override
  String get strVerifyRemoval => "Are you sure you want to remove this %?";

  // Summary
  @override
  String get strSummary => "Summary";

  @override
  String get strBalanceSummary => "Monthly Balance Summary";

  @override
  String get strCurrentIncomes => "Current Incomes";

  @override
  String get strExpectedIncomes => "Expected Incomes";

  @override
  String get strCurrentExpenses => "Current Expenses";

  @override
  String get strExpectedExpenses => "Expected Expenses";

  @override
  String get strTotalExpectedBalance => "Total Expected";

  @override
  String get strTotalCurrentBalance => "Total Current";

  @override
  String get strCurrentBankBalance => "Current Bank";

  @override
  String get strExpectedBankBalance => "Expected Bank";

  @override
  String get strBeginningMonthBalance => "Bank balance before";

  @override
  String get strBankInfo => "Current Bank Balance = Bank balance + Total Current Balance \nExpected Bank Balance = Bank balance + Total Expected Balance";

  @override
  String get strBeginningMontBalanceInfo => "This optional field allows you to enter the existing amount in the bank account at the beginning of the month and receive information about the status of the bank account";

  @override
  String get strIncomeBalanceInfo => "All categories current incomes vs expected incomes";

  @override
  String get strExpensesBalanceInfo => "All categories current expenses vs expected expenses";

  @override
  String get strTotalBalanceInfo => "Total Current Balance = Current Incomes - Current Expenses \nTotal Expected Balance = Expected Incomes - Expected Expenses";

  // Workspaces
  @override
  String get strWorkspace => "Workspace";

  @override
  String get strWorkspaceExplanation => "Workspaces allow the user to share and manage their monthly balance amongst multiple users.\nIn this screen, you can add a new workspace, join an existing one, invite new users, delete a workspace, and switch between them.";
  @override
  String get strWorkspaceTooltip => "Each workspace functions as an independent unit, ie. any change to the workspace will not affect other workspaces and will be reflected immediately in its members' accounts. There is no limit on the total number of workspaces or members. Additionally, workspaces can be used to plan special events which require separate planning, for example, family events, trips, etc.";

  @override
  String get strChooseWorkspace => "Choose workspace:";

  @override
  String get strAddNewWorkspace => "New workspace name";

  @override
  String get strWorkspaceOperationSuccessful => "The workspace was % successfully";

  @override
  String get strCurrentWorkspace => "Current Workspace";

  @override
  String get strManageWorkspaces => "Manage Workspaces";

  @override
  String get strNotEmailValidator => "This field can't include the character @";

  @override
  String get strWorkspaceAlreadyExist => "You are already a member in this workspace";

  @override
  String get strUserAlreadyRequestToJoin => "The user has already requested to join this workspace";

  @override
  String get strYouAlreadyInvitedToJoin => "You already have been invited to join this workspace";

  @override
  String get strUserAlreadyInWorkspace => "The user is already in this workspace";

  @override
  String get strOtherWorkspaceUsers => "Other users in the workspace:";

  @override
  String get strEmptyWorkspace => "You are alone in this workspace";

  @override
  String get strJoinWorkspace => "This workspace already exists.\nDo you want to send a joining request to this workspace?";

  @override
  String get strWorkspaceJoinRequestSent => "A joining request to the workspace has been sent";

  @override
  String get strPendingWorkspaceRequests => "You have requested to join:";

  @override
  String get strJoiningWorkspaceRequestExist => "A joining request to this workspace is already exist";

  @override
  String get strWorkspaceCreated => "The workspace has been created";

  @override
  String get strInviteUserToWorkspace => "Invite user to workspace";

  @override
  String get strUserInvitedToWorkspace => "Good news!\nYou have been invited to join % workspace!";

  @override
  String get strUserRequestJoiningToWorkspace => "# requests to join % workspace";

  @override
  String get strUserApproveJoining => "Your application to join % workspace has been approved by #!";

  @override
  String get strUserDisapproveJoining => "Your application to join % workspace has been rejected by #";

  @override
  String get strPendingUsersRequestsTitle => 'Those users want to join "%":';

  @override
  String get strInvitedSuccessfullyWorkspace => "An invitation to the workspace has been sent";

  @override
  String get strPendingInvitationsRequests => "You have been invited to join:";

  @override
  String get strUserApproveInvitation => "# accepts your invitation to join % workspace";

  @override
  String get strUserRejectInvitation => "# rejects your invitation to join % workspace";

  @override
  String get strCantRemovePersonalWorkspace => "You can't remove your personal workspace";

  @override
  String get strCantInviteSinceUserNotUpdated => "The invitation couldn't be sent since the invited user needs to update his app";

  // Set Category And Transaction
  @override
  String get strTypeSelection => "Type";

  @override
  String get strConstantSwitch => "Constant";

  @override
  String get strBadNumberForm => "The inserted text is not a number";

  @override
  String get strIncomeTransactionInfo => "Income transactions examples: \n Rental payment from... \n Salary from... \n Tax refund from...";

  @override
  String get strExpenseTransactionInfo => "Expense transactions examples:\n Rental payment \n Electricity expenses \n Groceries \n Buying T-shirt in... \n Watching cinema movie";

  @override
  String get strIncomeCategoryInfo => "Income Category examples:\n Rental payments \n Salaries \n Refunds";

  @override
  String get strExpenseCategoryInfo => "Expense Category examples:\n Apartment \n Supermarket \n Shopping \n Hobbies";

  // Archive
  @override
  String get strDataUnavailable => "There is no data for the selected month";

  @override
  String get strDataReloadSuccessful => "The data has reloaded successfully";

  // About
  @override
  String get strAbout => "About the app";

  @override
  String get strLegalese => "All packages and icons used are properties of their respective owners";

  @override
  String get strScalesIcon => "Scales icon";

  @override
  String get strLoadIcon => "Load icon";

  @override
  String get strLostConnectionImage => "Lost connection image";

  // Monthly Report
  @override
  String get strMonthlyReportSubject => "Your Report For Month % Is Here!";

  @override
  String get strMonthlyReportContentHeader => "Hurrah! Another month has ended. It is a good time to summarize the month:";

  @override
  String get strMonthlyReportContentFooter => "As usual, the constants transactions for the next month are created.\nSee you next month!";

  @override
  String get strFinalIncomes => "Total incomes";

  @override
  String get strFinalExpenses => "Total expenses";

  @override
  String get strEndOfMonthBankBalance => "Bank balance after";

  @override
  String get strSendMonthlyReport => "Receive monthly report";

  @override
  String get strSendMonthlyReportInfo => "Mark it if you wish to get a monthly report to your email at the end of the month";

  // RateUs
  @override
  String get strRateUs => "Rate us";

  @override
  String get strRateUsExplanation => "Tap a star to set your rating. Add more description here if you want";

  @override
  String get strSubmit => "Submit";

  @override
  String get strCommentHint => "Set your comment here (optional)";

  @override
  String get strRateRecorded => "Your review has been recorded, thank you!";

  // Walkthrough
  @override
  String get strWatchWalkthrough => "Watch walkthrough";

  @override
  String get strSkip => "Skip";

  @override
  String get strNext => "Next";

  @override
  String get strWalkthroughDescription => "This walkthrough will show you the major functionalities of the app.";

  @override
  String get strWalkthroughWelcomeTitle => "Welcome screen";

  @override
  String get strWalkthroughWelcomeDescription => "This screen will allow you to experience the app without logging in. However, in order to save any changes you've made you must login or sign up, by tapping the button on the upper part of the screen.";

  @override
  String get strWalkthroughLoginTitle => "Authentication screen";

  @override
  String get strWalkthroughLoginDescription => "Via this screen you can sign in or sign up. To do so, choose the relevant tab for you. You can sign in using your Facebook or Google accounts, or with an email and password of your choice.";

  @override
  String get strWalkthroughSummaryDescription => "This screen has three main tabs to manage your monthly balance. The first is called summary, and it will allow you to compare between incomes and expenses in the current month. Additionally, by tapping on the change button, you can manage your workspaces (as explained later). You can, if you wish, to enter your balance in the beginning of the month, to get the state of your balance at the end of the month. Each month, your total balance will be updated automatically.";

  @override
  String get strWalkthroughBalanceTitle => "Income and expense screens";

  @override
  String get strWalkthroughBalanceDescription => "The next tabs are similar, and include the incomes and expenses of the current month. In each screen there is a chart, to visually represent your incomes/expenses, as well as a description of your categories and transactions (explained later). if you want to add a category, tap on 'add category'. With the + button, you can add a new transaction under that category. As well as update and delete existing transactions.";

  @override
  String get strWalkthroughAddCategoryDescription => "In this screen you can add a category as an income, or expense. A category is a collective name for a group of individual incomes and expenses with a common denominator. For example, under the category of 'entertainment', you can add 'watching a movie', or 'eating in a restaurant'. The choice is yours (for suggestions for names, long tap on the exclamation mark, next to the category's name). You must determine the expected budget for the category.";

  @override
  String get strWalkthroughAddTransactionDescription => "In this screen, you can add a new transaction under an existing category. A transaction is a single instance of an income/expense. For example, under the category of 'entertainment', you can add a transaction called 'watching a movie'. Each transaction must contain the amount of money you've earned/spent. Any transaction can be made constant, for all months. At the end of the month, an automatic cleanup will be performed, and only your constant transactions will be moved to the next month.";

  @override
  String get strWalkthroughArchiveDescription => "This screen allows viewing data from past months. At the 10th day of each month, the income and expense screens will be cleaned up, and their data transferred to the archive. Tap the button to choose which month's data you would like to watch.";

  @override
  String get strWalkthroughSettingsDescription => "This screen is divided to two sections. The upper section includes settings which can be changed, such as language, and dark mode. Additionally, you can choose whether you want a monthly report to be delivered to your email. The lower section has constants and options such as inviting a friend, rating the app, and re-watching this walkthrough.";

  @override
  String get strWalkthroughFinalTitle => "Let's get going!";

  @override
  String get strWalkthroughFinalDescription => "We invite you to experience, and manage your monthly balance in the app. We would like to hear about your opinions, suggestions and experiences via 'rate us' in the settings screen.";
}
