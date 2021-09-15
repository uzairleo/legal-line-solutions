import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';

class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UtilityBaseScreen(
      //bg of body
      bgAsset: "$assets/bg_pink2.png",

      ///
      ///appbar title
      ///
      appTitle: Column(
        children: [
          Text(
            "Surveys",
            style: bodyTextStyle.copyWith(
                fontSize: 16.sp, fontFamily: roboto, color: Colors.white),
          )
        ],
      ),

      ///
      ///body starts from here
      ///
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 103.h,
          ),
          //create survey widget button
          createSurvey(),
          SizedBox(
            height: 62.h,
          ),
          //manage survey widget button
          manageSurvey(),
        ],
      ),
    );
  }

  //create survey widget button
  createSurvey() {
    return Container(
      height: 88.h,
      width: 280.w,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(6.0.r)),
      child: Padding(
        padding: const EdgeInsets.only(right: 0.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 88.h,
              width: 66.w,
              decoration: BoxDecoration(
                  color: Color(0XFF2C609D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6.r),
                    bottomLeft: Radius.circular(6.r),
                  )),
              child: Center(
                child: ImageContainer(
                  assetImage: "$assets/add_doc.png",
                  height: 33.89.h,
                  width: 25.42.w,
                ),
              ),
            ),
            SizedBox(
              width: 28.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Create a survey",
                      style: headingTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontFamily: roboto),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  //manage survey widget button
  manageSurvey() {
    return Container(
      height: 88.h,
      width: 280.w,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 2.4),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0.r)),
      child: Padding(
        padding: const EdgeInsets.only(right: 0.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 88.h,
              width: 66.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color: Colors.black12, width: 2.4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6.r),
                    bottomLeft: Radius.circular(6.r),
                  )),
              child: Center(
                child: ImageContainer(
                  assetImage: "$assets/manage_survey.png",
                  height: 33.89.h,
                  width: 25.42.w,
                ),
              ),
            ),
            Container(
              height: 88.h,
              width: 2.4,
              color: Colors.black12,
            ),
            SizedBox(
              width: 28.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Manage survey",
                      style: headingTextStyle.copyWith(
                          color: Color(0XFF6200EE),
                          fontSize: 22.sp,
                          fontFamily: roboto),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
