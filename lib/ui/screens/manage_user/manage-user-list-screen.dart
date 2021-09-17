import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/bottom_sheets/question-bottom-sheet.dart';
import 'package:legal_line_solution/ui/custom_widgets/custom-widget.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/rectangle-button.dart';

class ManageUserListScreen extends StatelessWidget {
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
            "Manage  Users",
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
            height: 20.h,
          ),
          search(),
          SizedBox(
            height: 34.h,
          ),

          ///
          ///header
          ///
          header(),

          ///
          ///create a question tag
          ///
          CreateQuestion(),

          ///
          ///users list card
          ///
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32.0),
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => ManageUserTile()),
          )
        ],
      ),
    );
  }

  ///
  ///search bar
  ///
  search() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 32.3, left: 32.3),
            child: GestureDetector(
              onTap: () {
                // Get.to(() => SearchProductScreen());
              },
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 8, // has the effect of softening the shadow
                        spreadRadius:
                            1.2, // has the effect of extending the shadow
                        offset: Offset(
                          0, // horizontal, move right 10
                          0.4, // vertical, move down 10
                        ),
                      )
                    ]),
                child: TextFormField(
                  onSaved: (value) {},
                  enabled: false,
                  style: subBodyTextStyle.copyWith(fontSize: 16),
                  cursorColor: Colors.black,
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value != null) {
                      return "please write something";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      prefixIconConstraints:
                          BoxConstraints(maxHeight: 40, maxWidth: 50),
                      prefixIcon: Padding(
                        padding:
                            const EdgeInsets.only(left: 14.6, right: 14.12),
                        child: ImageContainer(
                          assetImage: "$assets/search.png",
                          height: 15.91.h,
                          width: 14.9.w,
                        ),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        left: 22,
                        bottom: 15,
                      ),
                      hintText: "Search ",
                      hintStyle: subBodyTextStyle.copyWith(
                          color: Colors.black87, fontSize: 17.sp)),
                ),
              ),
            ),
          ),
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon: Container(
        //     height: 24.h,
        //     width: 24.w,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(5.0.r),
        //       color: primaryColor.withOpacity(0.4),
        //     ),
        //     child: Center(
        //       child: Icon(
        //         Icons.add,
        //         size: 14,
        //       ),
        //     ),
        //   ),
        // ),
      ],
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
          "Users",
          style: headingTextStyle.copyWith(
              fontFamily: roboto, fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class CreateQuestion extends StatelessWidget {
  const CreateQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => CreateQuestionBottomSheet());
        // Scaffold.of(context).showBottomSheet<void>(
        //   (BuildContext context) {
        //     return CreateQuestionBottomSheet();
        //   },
        // );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 32, bottom: 32.0),
        child: Row(
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: Color(0XFF6200EE), shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              "Create User",
              style: bodyTextStyle.copyWith(
                  fontFamily: roboto,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF6200EE)),
            )
          ],
        ),
      ),
    );
  }
}
