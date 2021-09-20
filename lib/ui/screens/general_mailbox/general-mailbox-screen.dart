import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/screens/chat/chat-scree.dart';
import 'package:legal_line_solution/ui/screens/general_mailbox/thread_detail/general-mailbox-detail-screen.dart';

class GeneralMailBoxScreen extends StatelessWidget {
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
            "General mailbox",
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
          heading(),
          SizedBox(
            height: 34.h,
          ),
          detailCard()
        ],
      ),
    );
  }

  heading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Message Threads",
          style: bodyTextStyle.copyWith(
              fontSize: 20.sp, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  ///
  ///detail card
  ///
  detailCard() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 32,
        right: 32.0,
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
                    "Invite name",
                    style: bodyTextStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    "Inmate Id",
                    style: bodyTextStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    "      \t\t\t\t\t\t\t\t\t\t\t                  ",
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
                  GestureDetector(
                    onTap: () {
                      Get.to(() => GeneralMailBoxDetailScreen());
                    },
                    child: Container(
                      height: 26.h,
                      width: 106.w,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4.0.r)),
                      child: Center(
                        child: Text("Open Thread",
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
                  GestureDetector(
                    onTap: () {
                      Get.to(() => GeneralMailBoxDetailScreen());
                    },
                    child: Container(
                      height: 26.h,
                      width: 106.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4.0.r)),
                      child: Center(
                        child: Text("Open Thread",
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
