import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/rectangle-button.dart';
import 'package:legal_line_solution/ui/screens/conversation/conversation-screen.dart';
import 'package:legal_line_solution/ui/screens/home/drawer/drawer-screen.dart';
import 'package:legal_line_solution/ui/screens/root-screen.dart';
import 'package:legal_line_solution/ui/screens/staff_directory/staff-directory-screen.dart';
import 'package:legal_line_solution/ui/screens/surveys/surveys-screen.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  @override
  _PrivacyPolicyScreenState createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      ///appbar
      ///
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0XFF151F4B),
            ),
          ),
        ),
        centerTitle: true,
        title: //logo
            ImageContainer(
          assetImage: "$assets/logo.png",
          width: 199.w,
          height: 41.h,
        ),
      ),

      ///
      ///[body] starts from here
      ///
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //background image with opacity
            Opacity(
              opacity: 0.4,
              child: Container(
                height: 1.sh,
                width: 1.sw,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("$assets/bg_mix.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            //content goes here
            Container(
              // height: 1.sh,
              // width: 1.sw,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 87.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Privacy Policy",
                            style: headingTextStyle.copyWith(
                                fontSize: 30.sp,
                                fontFamily: roboto,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 100.0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using",
                                style: headingTextStyle.copyWith(
                                    fontSize: 20.sp,
                                    fontFamily: roboto,
                                    color: Colors.black54,
                                    height: 1.8,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Privacy Policy",
                            style: headingTextStyle.copyWith(
                                fontSize: 30.sp,
                                fontFamily: roboto,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.h, bottom: 100.0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using",
                                style: headingTextStyle.copyWith(
                                    fontSize: 20.sp,
                                    fontFamily: roboto,
                                    color: Colors.black54,
                                    height: 1.8,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
