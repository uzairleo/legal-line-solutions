import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/screens/conversation/conversation-screen.dart';
import 'package:legal_line_solution/ui/screens/notifications/notification-screen.dart';
import 'package:legal_line_solution/ui/screens/profile/profile-screen.dart';
import 'package:legal_line_solution/ui/screens/surveys/surveys-screen.dart';
import 'package:provider/provider.dart';

import 'home/drawer/drawer-screen.dart';
import 'home/home-screen.dart';

GlobalKey<ScaffoldState> drawerkey = GlobalKey(debugLabel: '_homeScreenkey');

///
///This is a [root-screen] of app for integrating the bottom-navigation bar and showing other screens
///
class RootScreen extends StatefulWidget {
  final int index;
  RootScreen({this.index = 0});
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  /// or accessing selected bottom navigation bar item
  var selectedIndex = 0;

  ///for putting a list of screens to bottom naviagtion bar childrens
  List<Widget> bottomAppBarScreens = <Widget>[
    HomeScreen(),
    ConversationScreen(),
    SurveyScreen(
      isBottomOne: true,
    ),
    NotificationScreen(
      isBottomOne: true,
    ),
    ProfileScreen(
      isBottomOne: true,
    )
  ];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.index;
    drawerkey = GlobalKey(debugLabel: '_homeScreenkey');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return _onBackPressed();
        },
        child: Scaffold(
          key: drawerkey,

          ///
          ///drawer
          ///
          drawer: DrawerScreen(),
          // backgroundColor: primaryColor, //backgroundColor,

          ///
          ///passing my all [screens] in root screen body
          ///
          body: bottomAppBarScreens.elementAt(selectedIndex),

          ///
          ///[BNB] bottom navigation bar for multiple screen access from dashboard
          ///
          bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
              width: double.infinity,
              height: 87.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.2),
                      blurRadius: 8, // has the effect of softening the shadow
                      spreadRadius:
                          1.2, // has the effect of extending the shadow
                      offset: Offset(
                        0, // horizontal, move right 10
                        0, // vertical, move down 10
                      ),
                    )
                  ],
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        30.0.r,
                      ),
                      topRight: Radius.circular(
                        30.0.r,
                      ))),
              child: Padding(
                padding: const EdgeInsets.only(left: 6, right: 6.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _onItemTapped(0);
                            },
                            child: ImageContainer(
                              fit: BoxFit.contain,
                              assetImage: selectedIndex == 0
                                  ? "assets/static_assets/bottom-nav-bar/home_sel.png"
                                  : "assets/static_assets/bottom-nav-bar/home_unselected.png",
                              height: 30.h,
                              width: 30.w,
                            ),
                          ),
                          // SizedBox(
                          //   height: 3.h,
                          // ),
                          // Text(
                          //   "HOME",
                          //   style: bodyTextStyle.copyWith(
                          //       fontSize: 9.sp, color: Colors.white),
                          // )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _onItemTapped(1);
                            },
                            child: ImageContainer(
                              fit: BoxFit.contain,
                              assetImage: selectedIndex == 1
                                  ? "assets/static_assets/bottom-nav-bar/mail_sel.png"
                                  : "assets/static_assets/bottom-nav-bar/mail_unsel.png",
                              height: 30.h,
                              width: 30.w,
                            ),
                          ),
                          // SizedBox(
                          //   height: 3.h,
                          // ),
                          // Text(
                          //   "REWARDS",
                          //   style: bodyTextStyle.copyWith(
                          //       fontSize: 9.sp, color: Colors.white),
                          // )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _onItemTapped(2);
                            },
                            child: ImageContainer(
                              fit: BoxFit.contain,
                              assetImage: selectedIndex == 2
                                  ? "assets/static_assets/bottom-nav-bar/survey_sel.png"
                                  : "assets/static_assets/bottom-nav-bar/survey_unsel.png",
                              height: 30.h,
                              width: 34.13.w,
                            ),
                          ),
                          // SizedBox(
                          //   height: 3.h,
                          // ),
                          // Text(
                          //   "WHAT's\nNEW",
                          //   textAlign: TextAlign.center,
                          //   style: bodyTextStyle.copyWith(
                          //       fontSize: 9.sp, color: Colors.white),
                          // )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _onItemTapped(3);
                            },
                            child: ImageContainer(
                              fit: BoxFit.contain,
                              assetImage: selectedIndex == 3
                                  ? "assets/static_assets/bottom-nav-bar/notification_sel.png"
                                  : "assets/static_assets/bottom-nav-bar/notification_unsel.png",
                              height: 30.h,
                              width: 25.36.w,
                            ),
                          ),
                          // SizedBox(
                          //   height: 3.h,
                          // ),
                          // Text(
                          //   "STORES\nLOCATION ",
                          //   textAlign: TextAlign.center,
                          //   style: bodyTextStyle.copyWith(
                          //       fontSize: 9.sp, color: Colors.white),
                          // )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _onItemTapped(4);
                            },
                            child: ImageContainer(
                              fit: BoxFit.contain,
                              assetImage: selectedIndex == 4
                                  ? "assets/static_assets/bottom-nav-bar/profile_sel.png"
                                  : "assets/static_assets/bottom-nav-bar/profile_unsel.png",
                              height: 30.h,
                              width: 30.w,
                            ),
                          ),
                          // SizedBox(
                          //   height: 3.h,
                          // ),
                          // Text(
                          //   "REWARDS",
                          //   style: bodyTextStyle.copyWith(
                          //       fontSize: 9.sp, color: Colors.white),
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  ///
  ///on[ backpressed] call back to avoid user interaction with splash screen
  ///
  Future<bool> _onBackPressed() async {
    return await Get.defaultDialog(
          title: 'Are you sure?',
          content: new Text('Do you want to exit an App'),
          actions: <Widget>[
            new FlatButton(
              textColor: primaryColor,
              onPressed: () {
                Navigator.of(context).pop(false);
                // _updateConnectionFlag(true);
              },
              child: Text(
                "NO",
              ),
            ),
            SizedBox(height: 16),
            new FlatButton(
              textColor: primaryColor,
              onPressed: () {
                exit(0);
              },
              child: Text("YES"),
            ),
          ],
        ) ??
        false;
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
