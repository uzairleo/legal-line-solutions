import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/bottom_sheets/question-bottom-sheet.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/rectangle-button.dart';
import 'package:legal_line_solution/ui/screens/chat/chat-scree.dart';

class ManageClientDetailScreen extends StatelessWidget {
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
            "Manage  Client",
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
            height: 49.h,
          ),

          ///
          ///header
          ///
          header(),

          Row(
            children: [],
          ),

          ///
          ///other content
          ///
          body(),

          Padding(
            padding: const EdgeInsets.only(top: 128.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.h,
                  width: 134.w,
                  child: RectangularButton(
                    title: "Message",
                    buttonColor: orangeColor,
                    onTap: () {
                      Get.to(() => ChatScreen());
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
          )
        ],
      ),
    );
  }

  body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 51),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Assigned Attorney",
                    style: bodyTextStyle.copyWith(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Container(
                      height: 1.3.h,
                      width: 150.w,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    "Karen Brown",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Access Pin",
                    style: bodyTextStyle.copyWith(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Container(
                      height: 1.3.h,
                      width: 100.w,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    "4200",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 63.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Facility",
                    style: bodyTextStyle.copyWith(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Container(
                      height: 1.3.h,
                      width: 150.w,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    "Stillwater Correctional",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 62.h,
          ),
          Row(
            children: [
              RectangularButton(
                title: "Delete Account",
                textStyle: bodyTextStyle.copyWith(
                    fontSize: 16.sp, color: Colors.white),
                radius: 6,
                width: 168.w,
                buttonColor: Colors.orange,
                onTap: () {},
              ),
            ],
          )
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
        Column(
          children: [
            Text(
              "Joe Black",
              style: headingTextStyle.copyWith(
                  fontFamily: roboto,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "04000",
              style: headingTextStyle.copyWith(
                  color: Colors.black45,
                  fontFamily: roboto,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        SizedBox(
          width: 11.5.w,
        ),
        ImageContainer(
          assetImage: "$assets/edit_b.png",
          height: 24.h,
          fit: BoxFit.contain,
          width: 24.w,
        )
      ],
    );
  }
}
