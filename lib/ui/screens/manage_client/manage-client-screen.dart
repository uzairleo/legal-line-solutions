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
import 'package:legal_line_solution/ui/screens/manage_client/create_client/create-client-screen.dart';
import 'package:legal_line_solution/ui/screens/manage_client/manage-client-detail-screen.dart';

class ManageClientScreen extends StatelessWidget {
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
            height: 65.h,
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
          ///detail card
          ///
          detailCard(),
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
          "Clients",
          style: headingTextStyle.copyWith(
              fontFamily: roboto, fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  ///
  ///detail card
  ///
  detailCard() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 0,
        right: 0.0,
      ),
      child: Container(
        padding: EdgeInsets.only(bottom: 26),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 12, // has the effect of softening the shadow
              spreadRadius: 1.2, // has the effect of extending the shadow
              offset: Offset(
                0, // horizontal, move right 10
                0.4, // vertical, move down 10
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11, horizontal: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name      ",
                    style: bodyTextStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    "Inmate Id",
                    style: bodyTextStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    "Assigned Attorney", //"      \t\t\t\t\t\t\t\t\t\t\t                  ",
                    style: bodyTextStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    "Manage ", //"      \t\t\t\t\t\t\t\t\t\t\t                  ",
                    style: bodyTextStyle.copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.8.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 12, // has the effect of softening the shadow
                  spreadRadius: 1.2, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    1, // vertical, move down 10
                  ),
                )
              ], color: Colors.black12),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Joe Black",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "0444550",
                    style: bodyTextStyle.copyWith(
                        color: Colors.black45, fontSize: 14.sp),
                  ),
                  Text(
                    "Karen Brown",
                    style: bodyTextStyle.copyWith(
                        color: Colors.black45, fontSize: 14.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ManageClientDetailScreen());
                    },
                    child: Container(
                      height: 26.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4.0.r)),
                      child: Center(
                        child: Text("VIEW",
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
            Container(
              width: double.infinity,
              height: 0.8,
              decoration: BoxDecoration(color: Colors.black12),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sam brain",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "0444550",
                    style: bodyTextStyle.copyWith(
                        color: Colors.black45, fontSize: 14.sp),
                  ),
                  Text(
                    "Karen Brown",
                    style: bodyTextStyle.copyWith(
                        color: Colors.black45, fontSize: 14.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ManageClientDetailScreen());
                    },
                    child: Container(
                      height: 26.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4.0.r)),
                      child: Center(
                        child: Text("VIEW",
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
            Container(
              width: double.infinity,
              height: 0.8,
              decoration: BoxDecoration(color: Colors.black12),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Joe Black",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "0444550",
                    style: bodyTextStyle.copyWith(
                        color: Colors.black45, fontSize: 14.sp),
                  ),
                  Text(
                    "Karen Brown",
                    style: bodyTextStyle.copyWith(
                        color: Colors.black45, fontSize: 14.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ManageClientDetailScreen());
                    },
                    child: Container(
                      height: 26.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4.0.r)),
                      child: Center(
                        child: Text("VIEW",
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
            Container(
              width: double.infinity,
              height: 0.8,
              decoration: BoxDecoration(color: Colors.black12),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sam brain",
                    style: bodyTextStyle.copyWith(
                      fontSize: 14.sp,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "0444550",
                    style: bodyTextStyle.copyWith(
                        color: Colors.black45, fontSize: 14.sp),
                  ),
                  Text(
                    "Karen Brown",
                    style: bodyTextStyle.copyWith(
                        color: Colors.black45, fontSize: 14.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ManageClientDetailScreen());
                    },
                    child: Container(
                      height: 26.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4.0.r)),
                      child: Center(
                        child: Text("VIEW",
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
            Container(
              width: double.infinity,
              height: 0.8,
              decoration: BoxDecoration(color: Colors.black12),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateQuestion extends StatelessWidget {
  const CreateQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => CreateClientScreen());
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
              "Create Client",
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
