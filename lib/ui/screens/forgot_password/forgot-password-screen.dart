import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/rectangle-button.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      ///[body] starts from here
      ///
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("$assets/bg_light.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 83.h,
              ),
              //logo
              ImageContainer(
                assetImage: "$assets/logo.png",
                width: 299.w,
                height: 61.h,
              ),

              ///
              ///heading
              ///
              heading(),

              ////
              ///text form field form
              ///

              form(),

              ///
              ///send button
              ///
              sendButton(),
            ],
          ),
        ),
      ),
    );
  }

  ///
  ///heading
  ///
  heading() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 129.h,
        ),
        Text(
          "Forgot Your\nPassword?",
          textAlign: TextAlign.center,
          style: headingTextStyle.copyWith(
              fontSize: 31.sp,
              color: Color(0XFF1A4475),
              fontFamily: GoogleFonts.metrophobic().fontFamily),
        ),
        SizedBox(
          height: 29.h,
        ),
        Text(
          "We will send you a\n temporary password",
          textAlign: TextAlign.center,
          style: bodyTextStyle.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              height: 1.6,
              color: Color(0XFF1A4475),
              fontFamily: GoogleFonts.metrophobic().fontFamily),
        ),
        SizedBox(
          height: 100.h,
        ),
      ],
    );
  }

  ////
  ///text form field form
  ///

  form() {
    return Padding(
      padding: const EdgeInsets.only(left: 64, right: 64.0),
      child: Column(
        children: [
          Container(
            height: 52.h,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Type your Email",
                  fillColor: Colors.white,
                  hintStyle: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      height: 1.4,
                      fontFamily: GoogleFonts.karla().fontFamily),
                  contentPadding: EdgeInsets.only(top: 14, left: 13),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color: Color(0XFFFF9900))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color: Color(0XFFFF9900)))),
            ),
          ),
        ],
      ),
    );
  }

  ///
  ///send button
  ///
  sendButton() {
    return Padding(
      padding: EdgeInsets.only(top: 120.h, left: 60, right: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 52.h,
            width: 156.w,
            decoration: BoxDecoration(
                color: Color(0XFFFF9900),
                borderRadius: BorderRadius.circular(5.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sent",
                  style: buttonTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      fontFamily: GoogleFonts.karla().fontFamily),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
