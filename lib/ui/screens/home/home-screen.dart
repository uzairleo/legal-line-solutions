import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/rectangle-button.dart';
import 'package:legal_line_solution/ui/screens/home/drawer/drawer-screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      ///drawer
      ///
      drawer: DrawerScreen(),

      ///
      ///appbar
      ///
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Color(0XFF151F4B),
            ),
          ),
        ),
        centerTitle: true,
        title: //logo
            ImageContainer(
          assetImage: "$assets/logo.png",
          width: 199.w,
          height: 41.h,
        ),
      ),

      ///
      ///[body] starts from here
      ///
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("$assets/bg_mix.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 54.h,
                ),
                Row(
                  children: [
                    Text(
                      "Juris Civilis",
                      style: headingTextStyle.copyWith(
                        fontSize: 20.sp,
                        fontFamily: roboto,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 81.h,
                ),

                ///
                ///Messages section
                ///
                messages(),

                ///
                ///staff directory and surveys section
                ///
                staffDirectoryAndSurveys(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  ///Messages section
  ///
  messages() {
    return Container(
      height: 176.h,
      decoration: BoxDecoration(
          color: Color(0XFFF3C7F6), borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                      color: primaryColor, shape: BoxShape.circle),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 27.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Messages",
                        style: subHeadingTextStyle.copyWith(
                            fontFamily: roboto,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15.8.h,
                      ),
                      Text(
                          "Find your lawers staff directory here for more around the work.",
                          textAlign: TextAlign.center,
                          style: subHeadingTextStyle.copyWith(
                              fontFamily: roboto,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ImageContainer(
                  height: 105.56.h,
                  width: 97.58.w,
                  assetImage: "$assets/message_bubble.png",
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  ///
  ///staff directory and surveys section
  ///
  staffDirectoryAndSurveys() {
    return Padding(
      padding: EdgeInsets.only(top: 48.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 176.h,
              // width: 176.w,
              decoration: BoxDecoration(
                  color: Color(0XFF9DB7EC),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                                color: primaryColor, shape: BoxShape.circle),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ImageContainer(
                            height: 54.8.h,
                            width: 45.67.w,
                            assetImage: "$assets/staff.png",
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Staff directory ",
                              style: headingTextStyle.copyWith(
                                  fontSize: 22.sp, fontFamily: roboto),
                            ),
                          ),
                          Text(
                            "Find your lawers staff directory\n here for more around the work. ",
                            style: bodyTextStyle.copyWith(
                                fontFamily: roboto, fontSize: 10.sp),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Container(
              height: 176.h,
              // width: 176.w,
              decoration: BoxDecoration(
                  color: Color(0XFFC7D6F6),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                                color: primaryColor, shape: BoxShape.circle),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ImageContainer(
                            height: 58.8.h,
                            width: 58.67.w,
                            assetImage: "$assets/surveys.png",
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Surveys",
                              style: headingTextStyle.copyWith(
                                  fontSize: 22.sp, fontFamily: roboto),
                            ),
                          ),
                          Text(
                            "Find your lawers staff directory\nhere for more around the work. ",
                            style: bodyTextStyle.copyWith(
                                fontFamily: roboto, fontSize: 10.sp),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
