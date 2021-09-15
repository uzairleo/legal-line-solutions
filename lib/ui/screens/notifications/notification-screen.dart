import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/notification-tile.dart';

class NotificationScreen extends StatelessWidget {
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
            "Notification",
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
            height: 27.h,
          ),
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (_, index) => NotificationTile(),
          )
        ],
      ),
    );
  }
}
