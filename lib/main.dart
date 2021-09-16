import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:legal_line_solution/ui/screens/chat/chat-screen.dart';
import 'package:legal_line_solution/ui/screens/forgot_password/forgot-password-screen.dart';
import 'package:legal_line_solution/ui/screens/home/home-screen.dart';
import 'package:legal_line_solution/ui/screens/login/login-screen.dart';
import 'package:legal_line_solution/ui/screens/manage_user/manager-user-screen.dart';
import 'package:legal_line_solution/ui/screens/notifications/notification-screen.dart';
import 'package:legal_line_solution/ui/screens/profile/profile-screen.dart';
import 'package:legal_line_solution/ui/screens/splashScreen.dart';
import 'package:legal_line_solution/ui/screens/staff_directory/staff-directory-screen.dart';
import 'package:legal_line_solution/ui/screens/surveys/surveys-screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///
  ///firebase init
  ///

  // await Firebase.initializeApp();
  //now finally setup locator
  // setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        //  MultiProvider(
        //   providers: [

        //   ],
        //   child:
        ScreenUtilInit(
      designSize: Size(428, 926),
      builder: () => GetMaterialApp(
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          home: StaffDirectoryScreen()
          //  ManageUserScreen()
          // ProfileScreen()
          // NotificationScreen()
          // SurveyScreen()
          // ChatScreen()
          // HomeScreen()
          // ForgotPassword()
          // LoginScreen()
          // SplashScreen(),
          // ),
          ),
    );
  }
}
