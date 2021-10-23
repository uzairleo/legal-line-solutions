import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/bottom_sheets/question-bottom-sheet.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/notification-tile.dart';
import 'package:legal_line_solution/ui/custom_widgets/rectangle-button.dart';

class CreateSurveyScreen extends StatefulWidget {
  @override
  _CreateSurveyScreenState createState() => _CreateSurveyScreenState();
}

class _CreateSurveyScreenState extends State<CreateSurveyScreen> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool checkAll = false;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 36.h,
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

          ///
          ///launch Survey button
          ///
          launchSurveyButton(ontap: () {})
        ],
      ),
    );
  }

  ///
  ///header
  ///
  header() {
    return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Container(
            height: 47.h,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8, // has the effect of softening the shadow
                spreadRadius: 1.2, // has the effect of extending the shadow
                offset: Offset(
                  0, // horizontal, move right 10
                  10.4, // vertical, move down 10
                ),
              )
            ]),
          ),
        ),
        Container(
          height: 47.h,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(left: 34, right: 38.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(
                //   "Create the Title",
                //   style: headingTextStyle.copyWith(
                //       fontFamily: roboto,
                //       fontSize: 20.sp,
                //       fontWeight: FontWeight.bold),
                // ),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Create the title",
                      hintStyle: headingTextStyle.copyWith(
                          fontFamily: roboto,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ImageContainer(
                  height: 21.h,
                  width: 23.63.w,
                  assetImage: "$assets/edit_survey.png",
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  ///
  ///create a question tag
  ///
  // createQuestion(context) {
  //   return TextButton(
  //     onPressed: () {
  //       Scaffold.of(context).showBottomSheet<void>(
  //         (BuildContext context) {
  //           return CreateQuestionBottomSheet();
  //         },
  //       );
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.only(top: 55, left: 32, bottom: 55.0),
  //       child: Row(
  //         children: [
  //           Container(
  //             height: 40.h,
  //             width: 40.w,
  //             decoration: BoxDecoration(
  //                 color: Color(0XFF6200EE), shape: BoxShape.circle),
  //             child: Center(
  //               child: Icon(
  //                 Icons.add,
  //                 size: 18,
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             width: 15.w,
  //           ),
  //           Text(
  //             "Create a Question",
  //             style: bodyTextStyle.copyWith(
  //                 fontFamily: roboto,
  //                 fontSize: 20.sp,
  //                 color: Color(0XFF6200EE)),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  ///
  ///detail card
  ///
  detailCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32.0),
      child: Container(
        padding: EdgeInsets.only(bottom: 0),
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
                    "Client name",
                    style: bodyTextStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    "Facility",
                    style: bodyTextStyle.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    "Send Survey",
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
            InkWell(
              onTap: () {
                isChecked = !isChecked;
                setState(() {});
              },
              child: Container(
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
                      "Alley",
                      style: bodyTextStyle.copyWith(
                          color: Colors.black45, fontSize: 14.sp),
                    ),
                    isChecked
                        ? Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(
                              Icons.check,
                              color: Color(0XFF6200EE),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(Icons.check, color: Colors.white),
                          )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.8,
              decoration: BoxDecoration(color: Colors.black12),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isChecked2 = !isChecked;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "leo brain ",
                      style: bodyTextStyle.copyWith(
                        fontSize: 14.sp,
                        color: Colors.black45,
                      ),
                    ),
                    Text(
                      "Alley",
                      style: bodyTextStyle.copyWith(
                          color: Colors.black45, fontSize: 14.sp),
                    ),
                    isChecked2
                        ? Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(
                              Icons.check,
                              color: Color(0XFF6200EE),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(Icons.check, color: Colors.white),
                          )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.8,
              decoration: BoxDecoration(color: Colors.black12),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 17),
              child: Row(
                children: [
                  ImageContainer(
                    height: 17.09.h,
                    width: 17.09.w,
                    assetImage: "$assets/must_complete.png",
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 28.0.w),
                    child: Text(
                      "Must Complete",
                      style: bodyTextStyle.copyWith(
                          color: Colors.black45, fontSize: 14.sp),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      checkAll = !checkAll;
                      setState(() {});
                    },
                    child: ImageContainer(
                      assetImage: !checkAll
                          ? "$assets/radio_sel.png"
                          : "$assets/radio_unsel.png",
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 55.w, right: 8.0.w),
                    child: Text(
                      "Check All",
                      style: bodyTextStyle.copyWith(
                          color: Colors.black45, fontSize: 14.sp),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      checkAll = !checkAll;
                      setState(() {});
                    },
                    child: ImageContainer(
                      assetImage: checkAll
                          ? "$assets/radio_sel.png"
                          : "$assets/radio_unsel.png",
                      height: 24.h,
                      width: 24.w,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ///
  ///launch Survey button
  ///
  launchSurveyButton({ontap}) {
    return Padding(
      padding: const EdgeInsets.only(top: 128.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60.h,
            width: 232.w,
            child: RectangularButton(
              title: "Launch Survey",
              buttonColor: orangeColor,
              onTap: () {},
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
        padding: const EdgeInsets.only(top: 55, left: 32, bottom: 55.0),
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
              "Create a Question",
              style: bodyTextStyle.copyWith(
                  fontFamily: roboto,
                  fontSize: 20.sp,
                  color: Color(0XFF6200EE)),
            )
          ],
        ),
      ),
    );
  }
}
