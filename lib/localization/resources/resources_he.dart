// ================= A Class For Hebrew Language =================
import 'package:balance_me/localization/resources/resources.dart';
import 'package:balance_me/global/constants.dart' as gc;

class LanguageHe extends Languages {
  // General
  @override
  String get languageName => "‎עברית";

  @override
  String get languageCode => "he";

  @override
  String get languageDirection => gc.rtl;

  @override
  String get strAppName => "BalanceMe";

  @override
  String get strAppTitle => "BalanceMe";

  @override
  String get strEssentialField => "‎זהו שדה הכרחי";

  @override
  String get strMaxCharactersLimit => "‎מספר התווים המקסימלי הינו %";

  @override
  String get strMustPositiveNum => "‎המספר חייב להיות גדול מ-0";

  @override
  String get strYes => "‎כן";

  @override
  String get strNo => "‎לא";

  @override
  String get strDate =>"‎תאריך";

  @override
  String get strAdd =>"‎הוסף";

  @override
  String get strRemoved =>"‎נמחק";

  @override
  String get strChanged =>"‎השתנה";

  @override
  String get strSet =>"‎שנה";

  @override
  String get strClose =>"‎סגור";

  @override
  String get strInvite =>"‎הזמן";

  @override
  String get strResend =>"‎שלח שוב";

  @override
  String get strApprove =>"‎אישור";

  @override
  String get strReject =>"דחייה‎";

  @override
  String get strProblemOccurred => "‎התרחשה בעיה, יש לנסות שוב מאוחר יותר";

  @override
  String get strHide =>"‎הסתר";

  // Settings
  @override
  String get strProfile => "‎פרופיל";

  @override
  String get strProfileSettings => "‎הגדרות הפרופיל";

  @override
  String get strPasswordSettings => "שינוי סיסמה‎ ";

  @override
  String get strCurrencySettings => "‎מטבע";

  @override
  String get strEndOfMonthSettings => "סוף החודש‎";

  @override
  String get strLanguageSettings => "‎שפה";

  @override
  String get strDarkModeSettings => "‎מצב כהה";

  @override
  String get strVersionSettings => "גירסה‎";

  @override
  String get strNewPassword => "‎סיסמה חדשה";

  @override
  String get strPasswordUpdate => "יש להקליד סיסמה חדשה למשתמש‎";

  @override
  String get strFinish => "‎סיום";

  @override
  String get strFirstName => "שם פרטי‎";

  @override
  String get strLastName => "שם משפחה‎";

  @override
  String get strFirstNameLabel => "הכנס שם פרטי‎";

  @override
  String get strLastNameLabel => "הכנס שם משפחה‎";

  @override
  String get strWeakPassword => "‎הסיסמה חלשה מדי, יש לרשום סיסמה חזקה יותר";

  @override
  String get strNotSignedIn => "שינוי הסיסמה נכשל, יש לנסות שוב‎";

  @override
  String get strSignInTimeout => "‎אין חשבון רשום כעת, יש לנסות שוב";

  @override
  String get strLanguage => "‎שפה";

  @override
  String get strTheme => "‎צבעים";

  @override
  String get strBeforeChangeAlertDialogContent => "‎שימו לב:\nשינוי ה% עלול לגרום לאיפוס המידע. על מנת לשמור את המידע יש להתחבר או להירשם.\nהאם ברצונך להחליף % בכל זאת?";

  @override
  String get strEndOfMonthInfo => "זהו היום בו המידע שלך מהמאזן מועבר לארכיון‎";

  @override
  String get strConstants => "הגדרות קבועות:‎";

  @override
  String get strDeleteProfile => "מחק את תמונת הפרופיל‎";

  @override
  String get strDeleteProfileFailed => "המחיקה נכשלה כיוון שאין תמונת פרופיל‎";

  @override
  String get strDeleteProfileAlert => "‎האם ברצונך למחוק את תמונת הפרופיל שלך?";

  @override
  String get strUpdate => "עדכון‎";

  @override
  String get strInviteFriend => "הזמנת חבר‎";

  @override
  String get strInviteFriendContent => "‎נסו את האפליקציה לניהול פיננסי שמאפשרת מעקב ובקרה על התקציב החודשי. ניתן להכניס את ההוצאות וההכנסות הצפויות ולעדכן במהלך החודש את ההכנסות וההוצאות בפועל. \n%";

  @override
  String get strInviteFriendSubject => "‎נסה את האפליקציה לניהול חשבון אישי";

  // Login
  @override
  String get strWelcomeBack => "‎ברוכים השבים!";

  @override
  String get strWelcomeAboard => "‎ברוכים הבאים!";

  @override
  String get strLogin => "‎התחברות";

  @override
  String get strLogout => "‎התנתקות";

  @override
  String get strSuccessfullyLogout => "‎התנתקת בהצלחה";

  @override
  String get strSignUp => "הרשמה‎";

  @override
  String get strEmailText => "כתובת דואר אלקטרוני‎";

  @override
  String get strPassword => "‎סיסמה";

  @override
  String get strForgotPassword => "‎שכחת סיסמה?";

  @override
  String get strSignIn => "‎כניסה";

  @override
  String get strUserNotFound => "‎המשתמש לא נמצא";

  @override
  String get strMissingFields => "יש לרשום כתובת דואר אלקטרוני וסיסמה במידה וברצונך להירשם‎";

  @override
  String get strMismatchingPasswords => "הסיסמאות אינן זהות‎";

  @override
  String get strConfirmPassword => "אימות סיסמה‎";

  @override
  String get strChangePasswordSuccess => "הסיסמה שונתה בהצלחה‎";

  @override
  String get strProfileUpdateSuccessful => "‎הפרופיל עודכן בהצלחה";

  @override
  String get strNoImagePicked => "‎לא נבחרה תמונה";

  @override
  String get strGalleryOption => "גלריה‎";

  @override
  String get strCameraOption => "מצלמה‎";

  @override
  String get strMinPasswordLimit => "‎אורך הסיסמה  להיות לפחות %";

  @override
  String get strBadEmail => "‎כתובת הדואר האלקטרוני שהוזנה אינה תקינה";

  @override
  String get strIncorrectPassword => "‎הסיסמה שכתבת אינה תואמת את כתובת הדואר האלקטרונית";

  @override
  String get strEmailInUse => "‎קיים חשבון עם כתובת הדואר האלקטרונית הזו";

  @override
  String get strTooManyProviders => "‎לא ניתן להוסיף חשבון נוסף לכתובת זו";

  @override
  String get strLinkProviderError => "קיים חשבון עם כתובת זו תחת ספק אחר‎";

  @override
  String get strSignUpWith => "‎הרשמה עם %";

  @override
  String get strLoginWith => "‎התחברות עם %";

  @override
  String get strGoogle => "‎גוגל";

  @override
  String get strFacebook => "‎פייסבוק";

  // Password Recovery
  @override
  String get strRecoverPassword => "שחזור סיסמה‎";

  @override
  String get strForgotPasswordLink => "שכחת את הסיסמה שלך?‎";

  @override
  String get strConfirmEmail => "יש לאמת את כתובת הדואר האלקטרוני שלך. לאחר מכן ההוראות לשחזור הסיסמה ישלחו‎";

  @override
  String get strSend => "שליחה‎";

  @override
  String get strEmailSent => "‎ההודעה נשלחה";

  // Navigation
  @override
  String get strBalance => "‎המאזן";

  @override
  String get strArchive => "‎ארכיון";

  @override
  String get strSettings => "‎הגדרות";

  // Charts
  @override
  String get strAvailable => "‎זמין";

  // Balance
  @override
  String get strNothingToShow => "‎בינתיים אין מה להציג כאן";

  @override
  String get strBalanceInfo =>  "‎האפליקציה נועדה לניהול ההוצאות וההכנסות החודשיות.";

  @override
  String get strToGetStartedInfo =>  "‎על מנת לשמור את המידע וליהנות מכל יכולות האפליקציה, יש להתחבר.";

  @override
  String get strExpense => "‎הוצאה";

  @override
  String get strExpenses => "‎הוצאות";

  @override
  String get strIncome => "‎הכנסה";

  @override
  String get strIncomes => "‎הכנסות";

  @override
  String get strCurrent => "‎בפועל";

  @override
  String get expected => "צפוי‎";

  @override
  String get strCategory => "‎קטגוריה";

  @override
  String get strAddCategory => "‎הוספת קטגוריה";

  @override
  String get strDetailsCategory => "‎פרטי הקטגוריה";

  @override
  String get strTransaction => "‎תנועה";

  @override
  String get strAddTransaction => "‎הוספת תנועה";

  @override
  String get strEditCategory => "‎עריכת קטגוריה";

  @override
  String get strEditTransaction => "‎עריכת התנועה";

  @override
  String get strDetailsTransaction => "‎פרטי התנועה";

  @override
  String get strCategoryName => "‎שם הקטגוריה";

  @override
  String get strTransactionName => "‎שם התנועה";

  @override
  String get strAddDescription => "‎תיאור... (אופציונלי)";

  @override
  String get strEmptyDescription => "‎אין תיאור זמין";

  @override
  String get strBack => "‎חזור";

  @override
  String get strSave => "‎שמירה";

  @override
  String get strSaveSucceeded => "‎ה% נשמרה בהצלחה";

  @override
  String get strRemoveSucceeded => "‎ה% הוסר בהצלחה";

  @override
  String get strAlreadyExist => "‎ה-% כבר קיים במערכת";

  @override
  String get strDelete => "‎מחיקת %";

  @override
  String get strVerifyRemoval => "‎האם למחוק את ה%?";

  // Summary
  @override
  String get strSummary => "‎סיכום";

  @override
  String get strBalanceSummary => "‎סיכום מאזן חודשי";

  @override
  String get strCurrentIncomes => "‎הכנסות בפועל";

  @override
  String get strExpectedIncomes => "‎הכנסות צפויות";

  @override
  String get strCurrentExpenses => "‎הוצאות בפועל";

  @override
  String get strExpectedExpenses => "‎הוצאות צפויות";

  @override
  String get strTotalExpectedBalance => "‎מאזן צפוי";

  @override
  String get strTotalCurrentBalance => "‎מאזן בפועל";

  @override
  String get strCurrentBankBalance => "‎מאזן נוכחי בבנק";

  @override
  String get strExpectedBankBalance => "‎מאזן מצופה בבנק";

  @override
  String get strBeginningMonthBalance => "‎מאזן הבנק בתחילת חודש";

  @override
  String get strBankInfo => "‎מאזן נוכחי בבנק = מאזן בבנק + מאזן בפועל \nמאזן מצופה בבנק = מאזן בבנק + מאזן צפוי";

  @override
  String get strBeginningMontBalanceInfo => "‎שדה אופציונלי זה מאפשר להזין את הסכום הקיים בחשבון הבנק בתחילת החודש ולקבל מידע לגבי מצב חשבון הבנק";

  @override
  String get strIncomeBalanceInfo => "‎הכנסות בפועל מול הכנסות צפויות בכל הקטגוריות";

  @override
  String get strExpensesBalanceInfo => "‎הוצאות בפועל מול הוצאות צפויות בכל הקטגוריות";

  @override
  String get strTotalBalanceInfo => "‎מאזן בפועל = הכנסות בפועל - הוצאות בפועל \nמאזן צפוי = הכנסות צפויות - הוצאות צפויות";


  // Workspaces
  @override
  String get strWorkspace => "‎מרחב עבודה";

  @override
  String get strWorkspaceExplanation => "‎מרחב עבודה מאפשר לנהל ולשתף את המאזן החודשי בין מספר משתמשים.\nבעמוד זה ניתן להוסיף מרחב חדש (אם המרחב כבר קיים ניתן לשלוח בקשת הצטרפות למייסד המרחב), להזמין משתמשים למרחב, למחוק מרחב ולהחליף בין מרחבים.";

  @override
  String get strWorkspaceTooltip => "‎כל מרחב עבודה מתפקד כיחידה עצמאית וכל שינוי, הוספה והסרה ישתקף בו ולא ישפיע על מרחבים אחרים. ניתן לפתוח מספר לא מוגבל של מרחבי עבודה ולשתף כל אחד מהם עם מספר לא מוגבל של משתמשים. כל שינוי, הוספה או הסרה של הכנסה או הוצאה במרחב ישתקף אוטומטית אצל כל המשתמשים במרחב. ניתן להשתמש במרחבי העבודה גם לניהול אירוע מיוחד הדורש תכנון ספיציפי בפני עצמו, כגון אירוע משפחתי, טיול ועוד.";

  @override
  String get strChooseWorkspace => "‎הוספת מרחב עבודה:";

  @override
  String get strAddNewWorkspace => "‎שם מרחב העבודה חדש";

  @override
  String get strWorkspaceOperationSuccessful => "‎מרחב העבודה % בהצלחה";

  @override
  String get strCurrentWorkspace => "‎מרחב העבודה הנוכחי";

  @override
  String get strManageWorkspaces => "‎ניהול מרחבי עבודה";

  @override
  String get strNotEmailValidator => "‎השדה לא יכול להכיל את התו @";

  @override
  String get strWorkspaceAlreadyExist => "‎הינך כבר חלק ממרחב העבודה";

  @override
  String get strUserAlreadyRequestToJoin => "‎המשתמש כבר ביקש להצטרף למרחב העבודה";

  @override
  String get strYouAlreadyInvitedToJoin => "‎כבר הוזמנת להצטרף למרחב העבודה";

  @override
  String get strUserAlreadyInWorkspace => "‎המשתמש כבר נמצא בסביבת העבודה";

  @override
  String get strOtherWorkspaceUsers => "‎משתמשים נוספים במרחב:";

  @override
  String get strEmptyWorkspace => "‎מרחב העבודה ריק";

  @override
  String get strJoinWorkspace => "‎מרחב העבודה כבר קיים.\nהאם לשלוח בקשת הצטרפות למרחב?";

  @override
  String get strWorkspaceJoinRequestSent => "‎בקשת הצטרפות למרחב העבודה נשלחה";

  @override
  String get strPendingWorkspaceRequests => "‎ביקשת להצטרף למרחבי העבודה הבאים:";

  @override
  String get strJoiningWorkspaceRequestExist => "‎בקשת הצטרפות למרחב העבודה כבר נשלחה";

  @override
  String get strWorkspaceCreated => "‎מרחב העבודה נוצר בהצלחה";

  @override
  String get strInviteUserToWorkspace => "‎הזמן משתמש למרחב העבודה";

  @override
  String get strUserInvitedToWorkspace => "‎חדשות טובות!\n המשתמש # הזמין אותך להצטרף למרחב העבודה %";

  @override
  String get strUserRequestJoiningToWorkspace => "‎המשתמש # ביקש להצטרף למרחב העבודה %";

  @override
  String get strUserApproveJoining => "‎בקשתך להצטרף למרחב העבודה % אושרה על ידי המשתמש #";

  @override
  String get strUserDisapproveJoining => "‎בקשתך להצטרף למרחב העבודה % נדחתה על ידי המשתמש #";

  @override
  String get strPendingUsersRequestsTitle => '‎המשתמשים הבאים מעוניינים להצטרף ל-"%":';

  @override
  String get strInvitedSuccessfullyWorkspace => "‎הזמנת הצטרפות למרחב העבודה נשלחה";

  @override
  String get strPendingInvitationsRequests => "‎הוזמנת להצטרף למרחבי העבודה הבאים:";

  @override
  String get strUserApproveInvitation => "‎המשתמש # אישר את הזמנתך להצטרף למרחב העבודה %";

  @override
  String get strUserRejectInvitation => "‎המשתמש # דחה את הזמנתך להצטרף למרחב העבודה %";

  @override
  String get strCantRemovePersonalWorkspace => "‎לא ניתן למחוק את מרחב העבודה הפרטי";

  @override
  String get strCantInviteSinceUserNotUpdated => "‎לא היה ניתן לשלוח את ההזמנה מכיוון שהמשתמש שהוזמן צריך לעדכן את האפליקציה";

  // Set Category And Transaction
  @override
  String get strTypeSelection => "‎סוג";

  @override
  String get strConstantSwitch => "‎קבוע";

  @override
  String get strBadNumberForm => "‎הטקסט שהוכנס איננו מספר";

  @override
  String get strIncomeTransactionInfo => "‎דוגמאות להכנסות: \n תשלום שכירות מ... \n משכורת מ... \n החזר מס מ...";

  @override
  String get strExpenseTransactionInfo => "‎דוגמאות להוצאות: \n שכר דירה \n הוצאות חשמל \n קניית מצרכים \n קניית חולצה ב... \n סרט בקולנוע";

  @override
  String get strIncomeCategoryInfo => "‎דוגמא לקטגורית הכנסות:\n שכירויות \n משכורות \n החזרים";

  @override
  String get strExpenseCategoryInfo => "‎דוגמא לקטגורית הוצאות:\n הוצאות דירה \n הוצאות סופרמרקט \n קניות \n תחביבים";

  // Archive
  @override
  String get strDataUnavailable => "‎אין מידע זמין עבור פרק הזמן הנבחר";

  @override
  String get strDataReloadSuccessful => "‎המידע נטען בהצלחה";

  @override
  String get strAbout => "‎אודות האפליקציה";

  @override
  String get strLegalese => "‎כל החבילות והאייקונים בשימוש שייכים לבעליהם";

  @override
  String get strScalesIcon => "‎אייקון מאזניים";

  @override
  String get strLoadIcon => "אייקון טעינה‎";

  @override
  String get strLostConnectionImage => "‎תמונה בעיה ברשת";

  // Monthly Report
  @override
  String get strMonthlyReportSubject => "‎הדו״ח לחודש % כבר כאן!";

  @override
  String get strMonthlyReportContentHeader => "‎הידד! עוד חודש הגיע לסיומו. זהו זמן מצוין לסכם את החודש:";

  @override
  String get strMonthlyReportContentFooter => "‎כרגיל, כל התנועות הקבועות לחודש הבא נוצרו.\nלהתראות בחודש הבא!";

  @override
  String get strFinalIncomes => "‎סך כל ההכנסות";

  @override
  String get strFinalExpenses => "‎סך כל ההוצאות";

  @override
  String get strEndOfMonthBankBalance => "‎המאזן הבנק בסוף החודש";

  @override
  String get strSendMonthlyReport => "‎קבלת דו״ח חודשי";

  @override
  String get strSendMonthlyReportInfo => "‎יש לסמן אם ברצונך לקבל בדואר האלקטרוני דו״ח בסוף כל חודש";

  // RateUs
  @override
  String get strRateUs => "‎דרגו אותנו";

  @override
  String get strRateUsExplanation => "‎בחרו בכוכב כדי לדרג. אם תרצו, ניתן להוסיף פירוט נוסף";

  @override
  String get strSubmit => "‎שליחה";

  @override
  String get strCommentHint => "‎כתבו את דעתכם כאן (אופציונלי)";

  @override
  String get strRateRecorded => "‎המשוב נקלט בהצלחה, תודה רבה!";

  // Walkthrough
  @override
  String get strWatchWalkthrough => "‎צפה בהדרכה";

  @override
  String get strSkip => "‎דלג";

  @override
  String get strNext => "המשך‎";

  @override
  String get strWalkthroughDescription => "‎סיור זה יציג בפניכם את האפליקציה.";

  @override
  String get strWalkthroughWelcomeTitle => "‎מסך הכניסה";

  @override
  String get strWalkthroughWelcomeDescription => "‎מסך זה מאפשר לחוות את השימוש באפליקציה ללא צורך בהתחברות. ניתן לבצע פעולות, אך על מנת לשמור את המידע שהוכנס יש להירשם או להתחבר לאפליקציה דרך הלחצן בחלקו העליון של המסך.";

  @override
  String get strWalkthroughLoginTitle => "מסך ההתחברות‎";

  @override
  String get strWalkthroughLoginDescription => "דרך מסך זה ניתן להירשם ולהתחבר לאפליקציה. לשם כך, בחרו בלשונית הרלוונטית עבורכם. ניתן להירשם ולהתחבר דרך גוגל, פייסבוק, או דרך שם משתמש וסיסמה לבחירתכם.‎";

  @override
  String get strWalkthroughSummaryDescription => "מסך זה כולל שלוש לשוניות מרכזיות לניהול המאזן החודשי. הלשונית הראשונה היא לשונית הסיכום המאפשרת השוואה בין ההוצאות להכנסות בחודש הנוכחי. בנוסף, בלחיצה כל הכפתור ״שנה״ ניתן לנהל את מרחבי העבודה (יוסבר בהמשך). ניתן (ולא חובה) להכניס את המאזן בחשבון הבנק בתחילת החודש על מנת לקבל את תמונת החשבון בסוף החודש. בכל סוף חודש יתבצע עדכון אוטומטי של המאזן.‎";

  @override
  String get strWalkthroughBalanceTitle => "מסכי ההוצאות וההכנסות‎";

  @override
  String get strWalkthroughBalanceDescription => "הלשוניות הבאות דומות זו לזו וכוללות את ההוצאות וההכנסות לחודש הנוכחי. בכל מסך ניתן לראות בצורה ויזואלית את ההוצאות/ההכנסות ופירוט של קטגוריות ובתוכן תנועות (יוסבר בהמשך). בכפתור הוספת הקטגוריה ניתן להוסיף למסך קטגוריה חדשה. בכפתור ה+ ניתן להוסיף תנועה חדשה. הלחצנים השונים בעמוד מאפשרים לערוך ולמחוק קטגוריות ותנועות.‎";

  @override
  String get strWalkthroughAddCategoryDescription => "במסך זה ניתן להוסיף קטגוריה כהוצאה/הכנסה. קטגוריה היא שם כולל לקבוצת הוצאות/הכנסות בעלות מכנה משותף. לדוגמה, תחת הקטגוריה של בילויים ניתן להכניס צפייה בסרט או אכילה במסעדה. תוכלו לקבוע בעצמכם את הקטגוריות בהן תשתמשו (במידה ותזדקקו לעזרה, תוכלו ללחוץ לחיצה ארוכה על כפתור סימן הקריאה ליד שם הקטגוריה). יש לקבוע את סך ההוצאות/ההכנסות המוקצבות לקטגוריה.‎";

  @override
  String get strWalkthroughAddTransactionDescription => "במסך זה ניתן להוסיף תנועה חדשה. תנועה היא הוצאה/הכנסה ספציפית תחת קטגוריה מסוימת. למשל, תחת קטגוריית הבילויים תוכלו להכניס תנועה בשם צפייה בסרט. על התנועה לכלול את הסכום שהוצא/הוכנס וכן ניתן לקבוע האם התנועה קבועה. בסוף כל חודש יתרחש ניקוי אוטומטי ותנועות קבועות ימשיכו איתכם לחודש הבא.‎";

  @override
  String get strWalkthroughArchiveDescription => "מסך זה מאפשר צפייה בנתונים מחודשים קודמים. בכל 10 לחודש מתבצע ניקוי של מסכי ההוצאות וההכנסות והנתונים מועברים למסך הארכיון. לחצו על הכפתור במטרה לבחור חודש בו תרצו לצפות.‎";

  @override
  String get strWalkthroughSettingsDescription => "מסך זה מחולק לשני חלקים. החלק העליון כולל הגדרות הניתנות לשינוי, כמו למשל שפה וצבעי האפליקציה. כמו כן, ניתן לקבוע האם לקבל בסוף כל חודש דו״ח סיכום לדואר האלקטרוני. בחלק התחתון של העמוד ישנן הגדרות קבועות הכוללות אפשרויות להזמנת חבר לאפליקציה, דירוג האפליקציה ואף צפייה חוזרת במדריך זה.‎";

  @override
  String get strWalkthroughFinalTitle => "קדימה לעבודה!‎";

  @override
  String get strWalkthroughFinalDescription => "אנו מזמינים אתכם לחוות ולנהל את המאזן החודשי שלכם באפליקציה.\nנשמח לשמוע את דעתכם, הצעותיכם וחוויותיכם דרך ״דרגו אותנו״ במסך ההגדרות.‎";
}
