import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:legal_line_solution/ui/screens/login/login-screen.dart';
import '../../locator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final _notificationServices = locator<NotificationsService>();
  // final _locationService = locator<LocationService>();
  @override
  void initState() {
    super.initState();
    _waitAndNavigate();
  }

  _waitAndNavigate() async {
    await Future.delayed(Duration(seconds: 3), () {
      Get.offAll(() => LoginScreen(), transition: Transition.downToUp);
    });
    // await _locationService.getCurrentLocation();
    // await _notificationServices.initConfigure();
    // await _notificationServices.sendNotification(
    //   userName: "UZAIRLEOTEST",
    //   hostFCMtoken:
    //       "eClI74p7TqOmjYZ2l1oTGy:APA91bG0aSPKemruRaLJCQ0fDLbdZ3RlrJYWoDpfVpw-CfuUfjDSwcL-t7TM0bUSNBDipJpQnXF9An76fuljQGasKVnauDDhstYTqWc1vwx-LHguRZ41Ow9TgbQrjC6QnZ2y1cpaazpm",
    // );
    //
    // await Future.delayed(Duration(seconds: 2));
    // Navigator.pushReplacement(
    //     context,
    //     PageTransition(
    //         child: OptionScreen(), type: PageTransitionType.leftToRight));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: SharedConstants().yellow,
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("$assets/splash_bg.png"), fit: BoxFit.cover)),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Center(
                child: Column(
              children: [
                ImageContainer(
                  assetImage: "$assets/logo.png",
                  height: 81.h,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 43.h,
                ),
                Container(
                  height: 42.h,
                  width: 42.w,
                  child: SpinKitSpinningLines(
                    color: Color(0XFF0000FF),
                  ),
                )
              ],
            )),
            // Image.asset("assets/"),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
