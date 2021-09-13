import 'package:flutter/material.dart';

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
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Text(
              'Legal line solutions',
              textAlign: TextAlign.center,
              style: TextStyle(
                // color: SharedConstants().purple,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height * 0.0906,
                fontFamily: 'Bison',
              ),
            ),
          ),
          // Image.asset("assets/"),
          Spacer(),
        ],
      ),
    );
  }
}
