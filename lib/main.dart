import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:legal_line_solution/ui/screens/chat/chat-scree.dart';
import 'package:legal_line_solution/ui/screens/conversation/conversation-screen.dart';
import 'package:legal_line_solution/ui/screens/general_mailbox/general-mailbox-screen.dart';
import 'package:legal_line_solution/ui/screens/home/home-screen.dart';
import 'package:legal_line_solution/ui/screens/manage_client/manage-client-detail-screen.dart';
import 'package:legal_line_solution/ui/screens/manage_client/manage-client-screen.dart';
import 'package:legal_line_solution/ui/screens/manage_user/manage-user-list-screen.dart';
import 'package:legal_line_solution/ui/screens/root-screen.dart';
import 'package:legal_line_solution/ui/screens/splashScreen.dart';
import 'package:legal_line_solution/ui/screens/staff_directory/staff-directory-screen.dart';
import 'package:legal_line_solution/ui/screens/surveys/create_survey/create-survey-screen.dart';
import 'package:legal_line_solution/ui/screens/surveys/manage_survey/manage-survey-screen.dart';
import 'package:legal_line_solution/ui/screens/surveys/manage_survey/survey_detail/manage-survey-detail-screen.dart';

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
          home: SplashScreen()
          // RootScreen()
          //  ManageUserListScreen()
          // ManageClientDetailScreen()
          //  ManageClientScreen()
          // GeneralMailBoxScreen()
          // HomeScreen()
          // ManageSurveyDetailScreen()
          // ManageSurveyScreen()
          // CreateSurveyScreen()
          // ChatScreen()
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
