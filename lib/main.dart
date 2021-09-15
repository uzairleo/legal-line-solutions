import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:legal_line_solution/ui/home/home-screen.dart';
import 'package:legal_line_solution/ui/screens/forgot_password/forgot-password-screen.dart';
import 'package:legal_line_solution/ui/screens/login/login-screen.dart';
import 'package:legal_line_solution/ui/screens/splashScreen.dart';

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
          home: HomeScreen()
          // ForgotPassword()
          // LoginScreen()
          // SplashScreen(),
          // ),
          ),
    );
  }
}
