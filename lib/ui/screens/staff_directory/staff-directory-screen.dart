import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/staff-directory-tile.dart';

class StaffDirectoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UtilityBaseScreen(
      //bg of body
      bgAsset: "$assets/bg_pink2.png",

      ///
      ///appbar title
      ///
      appTitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Staff Directory",
            style: bodyTextStyle.copyWith(
                fontSize: 16.sp, fontFamily: roboto, color: Colors.white),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'Franky Schmidt, Annie, Shayan, sheran, others',
            style: bodyTextStyle.copyWith(
                fontSize: 12.sp, fontFamily: roboto, color: Colors.white38),
          ),
        ],
      ),

      ///
      ///body starts from here
      ///
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 64.h,
            ),

            ///
            ///list of staff directories
            ///
            ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => StaffDirectoryTil())
          ],
        ),
      ),
    );
  }
}
