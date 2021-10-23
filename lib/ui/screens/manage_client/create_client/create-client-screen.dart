import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/bottom_sheets/question-bottom-sheet.dart';
import 'package:legal_line_solution/ui/custom_widgets/custom-text-field2.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/notification-tile.dart';
import 'package:legal_line_solution/ui/custom_widgets/rectangle-button.dart';

class CreateClientScreen extends StatefulWidget {
  @override
  _CreateClientScreenState createState() => _CreateClientScreenState();
}

class _CreateClientScreenState extends State<CreateClientScreen> {
  bool flag1 = false;

  bool flag2 = false;

  bool flag3 = false;

  @override
  Widget build(BuildContext context) {
    return UtilityBaseScreen(
      //bg of body
      bgAsset: "$assets/bg_pink3.png",

      ///
      ///appbar title
      ///
      appTitle: Column(
        children: [
          Text(
            "Create Client",
            style: bodyTextStyle.copyWith(
                fontSize: 16.sp, fontFamily: roboto, color: Colors.white),
          )
        ],
      ),

      ///
      ///body starts from here
      ///
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 43.h,
          ),

          ///
          ///header
          ///
          header(),
          SizedBox(
            height: 78.h,
          ),

          ///
          ///detail card
          ///
          detailCard(),

          ///
          ///assingToLawyerBtn button
          ///
          assingToLawyerBtn(ontap: () {})
        ],
      ),
    );
  }

  ///
  ///header
  ///
  header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Create Client",
          style: headingTextStyle.copyWith(
              fontSize: 20.sp, fontWeight: FontWeight.bold, fontFamily: roboto),
        )
      ],
    );
  }

  ///
  ///detail card
  ///
  detailCard() {
    return Opacity(
      opacity: 0.8,
      child: Container(
        // height: 430.h,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8, // has the effect of softening the shadow
            spreadRadius: 1.2, // has the effect of extending the shadow
            offset: Offset(
              0, // horizontal, move right 10
              0.4, // vertical, move down 10
            ),
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 47.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   width: 10.w,
                        // ),
                        Text(
                          "Create Info ",
                          style: bodyTextStyle.copyWith(
                              fontFamily: roboto,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34.h,
                    ),
                    textField(
                      label: "First Name",
                      hint: "enter Client first name",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    textField(
                      label: "Last Name",
                      hint: "enter Client last Name",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    textField(
                      label: "Inmate ID",
                      hint: "enter your last name",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    textField(
                      label: "Create Access Pin",
                      hint: "******",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    textField(
                      label: "Facility Name",
                      hint: "Enter your facility name",
                    ),
                  ]),
              SizedBox(
                width: 22.w,
              ),
              Container(
                height: 302.h,
                width: 1.2.w,
                color: Colors.black12,
              ),
              SizedBox(
                width: 32.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Assign To Attorney ",
                        style: bodyTextStyle.copyWith(
                            fontFamily: roboto,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Stacy Brown",
                            style: bodyTextStyle.copyWith(
                                fontFamily: roboto,
                                fontSize: 14.sp,
                                color: Colors.black),
                          ),
                          // SizedBox(
                          //   width: 16.w,
                          // ),
                          GestureDetector(
                            onTap: () {
                              flag1 = !flag1;
                              setState(() {});
                            },
                            child: ImageContainer(
                              assetImage: flag1
                                  ? "$assets/checkbox.png"
                                  : "$assets/uncheck.png",
                              height: 20.h,
                              width: 20.w,
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 11.h,
                  ),

                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kevin Brown",
                          style: bodyTextStyle.copyWith(
                              fontFamily: roboto,
                              fontSize: 14.sp,
                              color: Colors.black),
                        ),
                        // SizedBox(
                        //   width: 16.w,
                        // ),
                        GestureDetector(
                          onTap: () {
                            flag2 = !flag2;
                            setState(() {});
                          },
                          child: ImageContainer(
                            assetImage: flag2
                                ? "$assets/checkbox.png"
                                : "$assets/uncheck.png",
                            height: 20.h,
                            width: 20.w,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),

                  Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ryan Green",
                            style: bodyTextStyle.copyWith(
                                fontFamily: roboto,
                                fontSize: 14.sp,
                                color: Colors.black),
                          ),
                          // SizedBox(
                          //   width: 16.w,
                          // ),
                          GestureDetector(
                            onTap: () {
                              flag3 = !flag3;
                              setState(() {});
                            },
                            child: ImageContainer(
                              assetImage: flag3
                                  ? "$assets/checkbox.png"
                                  : "$assets/uncheck.png",
                              height: 20.h,
                              width: 20.w,
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 11.h,
                  ),
                  // AudioMessageLeft(Message())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  textField({hint, label}) {
    return Container(
      height: 38.h,
      width: 186.w,
      child: TextFormField(
        style: bodyTextStyle.copyWith(
            fontSize: 14.sp, fontFamily: GoogleFonts.karla().fontFamily),
        decoration: InputDecoration(
            labelText: "$label", //"Client Name",
            hintText: '$hint',
            labelStyle: bodyTextStyle.copyWith(
                fontSize: 14.sp, fontFamily: GoogleFonts.karla().fontFamily),
            hintStyle: bodyTextStyle.copyWith(
                fontSize: 12.sp, fontFamily: GoogleFonts.karla().fontFamily),
            contentPadding: EdgeInsets.only(top: 16, left: 15),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0.r),
                borderSide: BorderSide(width: 0.6)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0.r),
                borderSide: BorderSide(width: 0.6)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0.r),
                borderSide: BorderSide(width: 0.6, color: Colors.black)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0.r),
                borderSide: BorderSide(width: 0.6, color: Colors.black))),
      ),
    );
  }

  ///
  ///assingToLawyerBtn button
  ///
  assingToLawyerBtn({ontap}) {
    return Padding(
      padding: const EdgeInsets.only(top: 128.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60.h,
            width: 134.w,
            child: RectangularButton(
              title: "Save",
              buttonColor: orangeColor,
              onTap: () {
                Get.back();
              },
              width: 100.w,
              radius: 6.0,
              textStyle: bodyTextStyle.copyWith(
                  letterSpacing: 1,
                  fontFamily: roboto,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
