import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';

import '../custom-text-field2.dart';
import '../rectangle-button.dart';

class CreateQuestionBottomSheet extends StatefulWidget {
  @override
  _CreateQuestionBottomSheetState createState() =>
      _CreateQuestionBottomSheetState();
}

class _CreateQuestionBottomSheetState extends State<CreateQuestionBottomSheet> {
  bool isDropDownOpen = false;
  bool isMultipleChoice = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        height: 1.sh / 1.3,
        decoration: BoxDecoration(
          color: Color(
            0XFFFFF8F8,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 8, // has the effect of softening the shadow
              spreadRadius: 1.2, // has the effect of extending the shadow
              offset: Offset(
                0, // horizontal, move right 10
                -2.4, // vertical, move down 10
              ),
            )
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0.r),
              topRight: Radius.circular(30.0.r)),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 22.h,
              left: 33.w,
              right: 33.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: ImageContainer(
                          assetImage: "$assets/downward.png",
                          height: 13.5.h,
                          width: 23.62.w,
                        )),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: isDropDownOpen
                          ? Color(
                              0XFFFFF8F8,
                            )
                          : Colors.white,
                      borderRadius: BorderRadius.circular(6.0.r),
                      border: Border.all(color: Colors.grey.withOpacity(0.3))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          isMultipleChoice ? "Multiple Choice" : "Open Ended",
                          style: bodyTextStyle.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                              fontSize: 18.sp,
                              fontFamily: roboto),
                        ),
                        GestureDetector(
                          onTap: () {
                            isDropDownOpen = !isDropDownOpen;
                            setState(() {});
                          },
                          child: Container(
                            height: 60.h,
                            width: 71.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6.r),
                                  bottomRight: Radius.circular(6.r),
                                ),
                                color: isDropDownOpen
                                    ? Color(
                                        0XFFFFF8F8,
                                      )
                                    : primaryColor),
                            child: Center(
                              child: ImageContainer(
                                assetImage: isDropDownOpen
                                    ? "$assets/up_arrow.png"
                                    : "$assets/down_orange.png",
                                height: 13.5.h,
                                width: 23.62.w,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                isDropDownOpen
                    ? Container(
                        height: 120.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0.r),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.3))),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                isMultipleChoice = true;
                                isDropDownOpen = false;
                                setState(() {});
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28.0, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Multiple Choice",
                                      style: bodyTextStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                          fontSize: 18.sp,
                                          fontFamily: roboto),
                                    ),
                                    isMultipleChoice
                                        ? Icon(
                                            Icons.check,
                                            color: Colors.orange,
                                          )
                                        : Container(),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                isDropDownOpen = false;
                                isMultipleChoice = false;
                                setState(() {});
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28.0, vertical: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Open Ended",
                                      style: bodyTextStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                          fontSize: 18.sp,
                                          fontFamily: roboto),
                                    ),
                                    !isMultipleChoice
                                        ? Icon(
                                            Icons.check,
                                            color: Colors.orange,
                                          )
                                        : Container()
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 180.h,
                ),
                Row(
                  children: [
                    Text(
                      "Type Question",
                      style: headingTextStyle.copyWith(
                          fontSize: 18.sp,
                          fontFamily: roboto,
                          color: Colors.black54),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.0.h,
                ),
                // Container(
                //     height: 130.h,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(6.0.r),
                //         color: Colors.white,
                //         border: Border.all(color: Colors.grey.withOpacity(0.3))),
                //     child: TextFormField()),

                CustomTextField2(
                    maxLine: 4,
                    inputType: TextInputType.emailAddress,
                    // validator: (value) =>
                    //     value.toString().isEmail ? null : "Check your email",

                    // controller: TextEditingController(),
                    errorText: "Invalid Feild",
                    hintText: "I would like to ask for..",
                    onSaved: (value) {
                      // model.loginBody.email = value.toString();
                    }),

                Padding(
                  padding: EdgeInsets.only(top: 50.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60.h,
                        width: 102.w,
                        child: RectangularButton(
                          title: "Done",
                          buttonColor: orangeColor,
                          onTap: () {
                            Get.back();
                          },
                          width: 100.w,
                          radius: 6.0,
                          textStyle: bodyTextStyle.copyWith(
                              letterSpacing: 1,
                              fontFamily: roboto,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                      ),
                    ],
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
