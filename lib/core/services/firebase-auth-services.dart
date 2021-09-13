// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:project_1/core/model/custom_auth_result.dart';
// import 'package:project_1/core/model/user.dart';
// import 'package:project_1/core/services/auth_service.dart';
// import 'package:project_1/core/services/firebase_database_services.dart';

// import '../../locator.dart';
// import 'auth_exception_handler.dart';
// import 'notification-service.dart';

// class FirebaseAuthService extends AuthService {
//   final _auth = FirebaseAuth.instance;
//   // final GoogleSignIn _googleSignIn = GoogleSignIn();
//   CustomAuthResult customAuthResult = CustomAuthResult();
//   // final DatabaseService _dbService = locator<DatabaseService>();
//   final FirebaseDatabaseService _dbService = locator<FirebaseDatabaseService>();

//   FirebaseAuthService() {
//     print('@FirebaseAuthService');
//   }

// ////
//   ///This function will signup user with email and password
//   ///
//   @override
//   Future<CustomAuthResult> signUpWithEmailPassword({USER user}) async {
//     print('@services/singupWithEmaiPassword');
//     try {
//       final authResult = await _auth.createUserWithEmailAndPassword(
//           email: user.email, password: user.password);
//       if (authResult.user == null) {
//         customAuthResult.status = false;
//         customAuthResult.errorMessage = 'An undefined Error happened.';
//       } else {
//         ////uploading image to storage first
//         user.imgUrl = await _dbService.uploadFile(
//             user.imgFile, 'rent_users', '${user.firstName}${user.lastName}');

//         ///
//         user.uid = authResult.user.uid;
//         customAuthResult.status = true;
//         customAuthResult.user = authResult.user;
//         customAuthResult.notFirebaseUser = user;

//         final fcm = await locator<NotificationsService>().getFcmToken();
//         user.fcmToken = fcm;
//         // user.fcmToken = await FirebaseMessaging().getToken();
//         await _dbService.registerUser(user);
//       }
//     } catch (e) {
//       print('Exception @signupWithEmailPassword: $e');
//       customAuthResult.status = false;
//       customAuthResult.errorMessage =
//           AuthExceptionHandler.generateExceptionMessage(e);
//     }
//     return customAuthResult;
//   }

// /////
//   ///
//   ///This function will login user with email and password
//   ///
//   @override
//   Future<CustomAuthResult> loginWithEmailPassword({email, password}) async {
//     try {
//       var authResult;
//       print('@AuthService/loginWithEmailAndPassword');
//       authResult = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);

//       /// If user login fails without any exception and error code

//       if (authResult.user == null) {
//         customAuthResult.status = false;
//         customAuthResult.errorMessage = 'An undefined Error happened.';
//         return customAuthResult;
//       }

//       ///
//       /// If firebase auth is successful:
//       ///
//       /// Check if there is a user account associated with
//       /// this uid in the database.
//       /// If yes, then proceed to the auth success otherwise
//       /// logout the user and generate an error for the user.
//       ///
//       if (authResult.user != null) {
//         final user = await _dbService.getUserData(authResult.user.uid);
//         if (user == null) {
//           customAuthResult.status = false;
//           await logout();
//           customAuthResult.errorMessage =
//               "You don't have account. Please create one and then proceed to login.";
//           return customAuthResult;
//         }
//         customAuthResult.status = true;
//         customAuthResult.user = authResult.user;
//         customAuthResult.notFirebaseUser = user;
//       }
//     } catch (e) {
//       customAuthResult.status = false;
//       customAuthResult.errorMessage =
//           //  e.toString();
//           AuthExceptionHandler.generateExceptionMessage(e);
//     }
//     return customAuthResult;
//   }

// /////
//   ///
//   ///Host Authentication function
//   ///
//   ///

// ////
//   ///This function will signup user with email and password
//   ///
//   @override
//   Future<CustomAuthResult> hostSignUpWithEmailPassword({USER user}) async {
//     print('@services/singupWithEmaiPassword');
//     try {
//       final authResult = await _auth.createUserWithEmailAndPassword(
//           email: user.email, password: user.password);
//       if (authResult.user == null) {
//         customAuthResult.status = false;
//         customAuthResult.errorMessage = 'An undefined Error happened.';
//       } else {
//         ////uploading image to storage first
//         user.imgUrl = await _dbService.uploadFile(
//             user.imgFile, 'host_users', '${user.firstName}');

//         ///
//         user.uid = authResult.user.uid;
//         customAuthResult.status = true;
//         customAuthResult.user = authResult.user;
//         customAuthResult.notFirebaseUser = user;

//         final fcm = await locator<NotificationsService>().getFcmToken();
//         user.fcmToken = fcm;
//         // user.fcmToken = await FirebaseMessaging().getToken();
//         await _dbService.registerHostUser(user);
//       }
//     } catch (e) {
//       print('Exception @signupWithEmailPassword: $e');
//       customAuthResult.status = false;
//       customAuthResult.errorMessage =
//           AuthExceptionHandler.generateExceptionMessage(e);
//     }
//     return customAuthResult;
//   }

// /////
//   ///
//   ///This function will login user with email and password
//   ///
//   @override
//   Future<CustomAuthResult> hostLoginWithEmailPassword({email, password}) async {
//     try {
//       var authResult;
//       print('@AuthService/loginWithEmailAndPassword');
//       authResult = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);

//       /// If user login fails without any exception and error code

//       if (authResult.user == null) {
//         customAuthResult.status = false;
//         customAuthResult.errorMessage = 'An undefined Error happened.';
//         return customAuthResult;
//       }

//       ///
//       /// If firebase auth is successful:
//       ///
//       /// Check if there is a user account associated with
//       /// this uid in the database.
//       /// If yes, then proceed to the auth success otherwise
//       /// logout the user and generate an error for the user.
//       ///
//       if (authResult.user != null) {
//         final user = await _dbService.getHostUserData(authResult.user.uid);
//         if (user == null) {
//           customAuthResult.status = false;
//           await logout();
//           customAuthResult.errorMessage =
//               "You don't have account. Please create one and then proceed to login.";
//           return customAuthResult;
//         }
//         customAuthResult.status = true;
//         customAuthResult.user = authResult.user;
//       }
//     } catch (e) {
//       customAuthResult.status = false;
//       customAuthResult.errorMessage =
//           //  e.toString();
//           AuthExceptionHandler.generateExceptionMessage(e);
//     }
//     return customAuthResult;
//   }

// ////
//   ///
//   ///This function is used for login user anonymously
//   ///

//   @override
//   Future<CustomAuthResult> loginAnonymously() async {
//     try {
//       var user = USER();
//       var authResult;
//       print('@AuthService/loginAnonymously');
//       authResult = await _auth.signInAnonymously();

//       /// If user login fails without any exception and error code

//       // if (authResult.user == null) {
//       //   customAuthResult.status = false;
//       //   customAuthResult.errorMessage = 'An undefined Error happened.';
//       //   return customAuthResult;
//       // }

//       ///
//       /// If firebase auth is successful:
//       ///
//       /// Check if there is a user account associated with
//       /// this uid in the database.
//       /// If yes, then proceed to the auth success otherwise
//       /// logout the user and generate an error for the user.
//       ///
//       if (authResult.user == null) {
//         customAuthResult.status = false;
//         customAuthResult.errorMessage = 'An undefined Error happened.';
//         return customAuthResult;
//       } else {
//         user.uid = authResult.user.uid;
//         user.phone = "DEVICE_MAC_ADDRESS";
//         customAuthResult.status = true;
//         customAuthResult.user = authResult.user;

//         final fcm = await locator<NotificationsService>().getFcmToken();
//         user.fcmToken = fcm;
//         // user.fcmToken = await FirebaseMessaging().getToken();
//         await _dbService.registerGuestUser(user);
//       }
//     } catch (e) {
//       customAuthResult.status = false;
//       customAuthResult.errorMessage =
//           //  e.toString();
//           AuthExceptionHandler.generateExceptionMessage(e);
//     }
//     return customAuthResult;
//   }

//   // @override
//   // Future<CustomAuthResult> loginWithFacebook() async {
//   //   //TODO: Register app with facebook and do sdk settings.

//   //   try {
//   //     ///Login with Facebook
//   //     FacebookLogin facebookLogin = FacebookLogin();
//   //     facebookLogin.loginBehavior = FacebookLoginBehavior.webViewOnly;
//   //     final result = await facebookLogin.logIn(['email']);
//   //     final token = result.accessToken.token ?? "";

//   //     if (result.errorMessage != null)
//   //       print("Result error msg : " + result.errorMessage);
//   //     //Get User info
//   //     final graphResponse = await http.get(
//   //         'https://graph.facebook.com/v2.12/me?fields=name,email&access_token=${token}');
//   //     print(graphResponse.body);

//   //     //Implement Firebase Auth
//   //     if (result.status == FacebookLoginStatus.loggedIn) {
//   //       final credential =
//   //           FacebookAuthProvider.getCredential(accessToken: token);
//   //       final authResult = await _auth.signInWithCredential(credential);

//   //       ///Update Userinfo in Firestore
//   //       if (authResult.user != null) {
//   //         customAuthResult.status = true;
//   //         customAuthResult.user = authResult.user;

//   //         //TODO: Create Account in Database
//   //         User _user = new User(
//   //           uid: authResult.user.uid,
//   //           email: authResult.user.email,
//   //           fullName: authResult.user.displayName,
//   //           imgUrl: authResult.user.photoUrl,
//   //           contact: authResult.user.phoneNumber,
//   //         );
//   //         _user.fcmToken = await FirebaseMessaging().getToken();
//   //         await _dbService.registerUser(_user);
//   //         print(_user.toJson().toString());
//   //         print("Logged in");
//   //       } else {
//   //         customAuthResult.status = false;
//   //         customAuthResult.errorMessage = 'An undefined Error happened.';
//   //         print("An undefined Error happened");
//   //       }
//   //     }
//   //   } catch (e) {
//   //     print("Error occured while loggin with Facebok in Auth Service: " +
//   //         e.toString());
//   //   }
//   //   return customAuthResult;
//   // }

//   // ///
//   // /// Google SignIn
//   // ///
//   // @override
//   // Future<CustomAuthResult> loginWithGoogle() async {
//   //   //Todo: Do settings in the Google cloud for 0Auth Credentials
//   //   try {
//   //     final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
//   //     final GoogleSignInAuthentication googleAuth =
//   //         await googleUser.authentication;
//   //     final AuthCredential credential = GoogleAuthProvider.getCredential(
//   //       accessToken: googleAuth.accessToken,
//   //       idToken: googleAuth.idToken,
//   //     );
//   //     final authResult = await _auth.signInWithCredential(credential);
//   //     if (authResult.user != null) {
//   //       customAuthResult.status = true;
//   //       customAuthResult.user = authResult.user;

//   //       //TODO: Create Account in Database
//   //       User _user = new User(
//   //         uid: authResult.user.uid,
//   //         email: authResult.user.email,
//   //         fullName: authResult.user.displayName,
//   //         imgUrl: authResult.user.photoUrl,
//   //         contact: authResult.user.phoneNumber,
//   //       );
//   //       _user.fcmToken = await FirebaseMessaging().getToken();
//   //       await _dbService.registerUser(_user);
//   //       print("Logged in");
//   //     } else {
//   //       customAuthResult.status = false;
//   //       customAuthResult.errorMessage = 'An undefined Error happened.';
//   //       print("An undefined Error happened");
//   //     }
//   //   } catch (e) {
//   //     customAuthResult.status = false;
//   //     customAuthResult.errorMessage =
//   //         AuthExceptionHandler.generateExceptionMessage(e);
//   //     print("Error happened: " + e.toString());
//   //   }
//   //   return customAuthResult;
//   // }

//   @override
//   Future<void> logout({String id}) async {
//     // _dbService.updateFcmToken(null, id);
//     await _auth.signOut();
//     // await _googleSignIn.signOut();
//   }

//   // @override
//   // Future<CustomAuthResult> updateAccount(UserUpdateInfo updatedInfo) {
//   //   // TODO: implement updateAccount
//   //   throw UnimplementedError();
//   // }

//   // @override
//   // void resetPassword(String email) {
//   //   try {
//   //     _auth.sendPasswordResetEmail(email: email);
//   //   } catch (e) {
//   //     print('Exception @FirebaseAuthService/resetPassword: $e');
//   //   }
//   // }
// }
