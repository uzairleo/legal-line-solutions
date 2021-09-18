import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/notification-tile.dart';
import 'package:legal_line_solution/ui/screens/surveys/manage_survey/survey_detail/manage-survey-detail-screen.dart';

class ManageSurveyScreen extends StatelessWidget {
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
            "Manage Surveys",
            style: bodyTextStyle.copyWith(
                fontSize: 16.sp, fontFamily: roboto, color: Colors.white),
          ),
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
            height: 36.h,
          ),

          ///
          ///header tab
          ///
          header(),
          SizedBox(
            height: 5.h,
          ),

          ///
          ///listview of surveys tile
          ///
          surveyList(),
        ],
      ),
    );
  }

  ///
  ///header tab
  ///
  header() {
    return Container(
        height: 55.h,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8, // has the effect of softening the shadow
                spreadRadius: 1.2, // has the effect of extending the shadow
                offset: Offset(
                  0, // horizontal, move right 10
                  0.4, // vertical, move down 10
                ),
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0.r),
                topRight: Radius.circular(8.0.r))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Survey Title",
                  style: bodyTextStyle.copyWith(
                    fontSize: 14.sp,
                    fontFamily: roboto,
                  )),
              Text("Date",
                  style: bodyTextStyle.copyWith(
                    fontSize: 14.sp,
                    fontFamily: roboto,
                  )),
              Text("Id Number",
                  style: bodyTextStyle.copyWith(
                    fontSize: 14.sp,
                    fontFamily: roboto,
                  )),
              Text("Full Details",
                  style: bodyTextStyle.copyWith(
                    fontSize: 14.sp,
                    fontFamily: roboto,
                  ))
            ],
          ),
        ));
  }

  ///
  ///listview of surveys tile
  ///
  surveyList() {
    return ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => SurveyTile(index));
  }
}

class SurveyTile extends StatelessWidget {
  final int index;
  const SurveyTile(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 41.h,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Client sac",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      color: Colors.black54,
                      fontFamily: roboto,
                    )),
                Text("08/01/21",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      color: Colors.black54,
                      fontFamily: roboto,
                    )),
                Text("0346240",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontFamily: roboto,
                      color: Colors.black54,
                    )),
                GestureDetector(
                  onTap: () {
                    Get.to(() => ManageSurveyDetailScreen());
                  },
                  child: Container(
                    height: 26.h,
                    width: 64.w,
                    decoration: BoxDecoration(
                        color: index % 2 == 0 ? Colors.orange : primaryColor,
                        borderRadius: BorderRadius.circular(4.0.r)),
                    child: Center(
                      child: Text("View",
                          style: bodyTextStyle.copyWith(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontFamily: roboto,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
