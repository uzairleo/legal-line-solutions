import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/notification-tile.dart';

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
    return Container();
  }

  ///
  ///listview of surveys tile
  ///
  surveyList() {
    return Container();
  }
}
