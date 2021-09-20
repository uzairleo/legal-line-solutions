import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/notification-tile.dart';
import 'package:legal_line_solution/ui/custom_widgets/rectangle-button.dart';

class ProfileScreen extends StatelessWidget {
  final isBottomOne;
  ProfileScreen({this.isBottomOne});
  @override
  Widget build(BuildContext context) {
    return UtilityBaseScreen(
      //bg of body
      bgAsset: "$assets/bg_blur.png",
      isBottomOne: isBottomOne,

      ///
      ///appbar title
      ///
      appTitle: Column(
        children: [
          Text(
            "Profile",
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
          userAvatarRow(),

          ///first section
          topSection(),

//bottom section
          bottomSection(),
        ],
      ),
    );
  }

  userAvatarRow() {
    return Padding(
      padding: EdgeInsets.only(top: 19, right: 54.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: 100.h,
              width: 100.w,
              child: Stack(
                children: [
                  ImageContainer(
                    height: 100.h,
                    width: 100.w,
                    assetImage: "$assets/user.png",
                    fit: BoxFit.contain,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: ImageContainer(
                          assetImage: "$assets/gallery.png",
                          height: 18.54.h,
                          width: 18.54.w,
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  ///first section
  topSection() {
    return Padding(
      padding: EdgeInsets.only(left: 36, top: 10, bottom: 38.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Name",
                style:
                    bodyTextStyle.copyWith(fontSize: 14.sp, fontFamily: roboto),
              ),
              SizedBox(width: 18.5),
              Container(
                height: 19.h,
                width: 1,
                color: Colors.black45,
              ),
              SizedBox(width: 18.5),
              Text(
                "Jeff Bezos",
                style: bodyTextStyle.copyWith(
                    color: Colors.black45, fontSize: 14.sp, fontFamily: roboto),
              ),
              SizedBox(width: 58.5.w),
              ////
              ///Edit full name or upper sections
              ///
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 24.h,
                  width: 24.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.orange, width: 1.6),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: ImageContainer(
                      height: 12.h,
                      width: 12.w,
                      assetImage: "$assets/edit.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 25.sp),
          Row(
            children: [
              Text(
                "Email",
                style:
                    bodyTextStyle.copyWith(fontSize: 14.sp, fontFamily: roboto),
              ),
              SizedBox(width: 18.5),
              Container(
                height: 19.h,
                width: 1,
                color: Colors.black45,
              ),
              SizedBox(width: 18.5),
              Text(
                "Bezos@gmail.com",
                style: bodyTextStyle.copyWith(
                    color: Colors.black45, fontSize: 14.sp, fontFamily: roboto),
              ),
            ],
          ),
          SizedBox(height: 25.sp),
          Row(
            children: [
              Text(
                "Phone",
                style:
                    bodyTextStyle.copyWith(fontSize: 14.sp, fontFamily: roboto),
              ),
              SizedBox(width: 14.5),
              Container(
                height: 19.h,
                width: 1,
                color: Colors.black45,
              ),
              SizedBox(width: 18.5),
              Text(
                "0336284",
                style: bodyTextStyle.copyWith(
                    color: Colors.black45, fontSize: 14.sp, fontFamily: roboto),
              ),
            ],
          ),
          SizedBox(height: 25.sp),
          Row(
            children: [
              Text(
                "Role",
                style:
                    bodyTextStyle.copyWith(fontSize: 14.sp, fontFamily: roboto),
              ),
              SizedBox(width: 24.5),
              Container(
                height: 19.h,
                width: 1,
                color: Colors.black45,
              ),
              SizedBox(width: 18.5),
              Text(
                "Lawyer",
                style: bodyTextStyle.copyWith(
                    color: Colors.black45, fontSize: 14.sp, fontFamily: roboto),
              ),
            ],
          ),
          SizedBox(height: 25.sp),
          Padding(
            padding: EdgeInsets.only(right: 34.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // height: 42.5.h,
                  width: 200.w,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Update Password",
                        labelStyle: bodyTextStyle.copyWith(
                          fontFamily: roboto,
                          fontSize: 14.sp,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12)),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12))),
                  ),
                ),
                RectangularButton(
                  title: "Update",
                  buttonColor: primaryColor,
                  onTap: () {},
                  width: 100.w,
                  radius: 6.0,
                  textStyle: bodyTextStyle.copyWith(
                      fontFamily: roboto, fontSize: 16.sp, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

//bottom section
  bottomSection() {
    return Padding(
      padding: EdgeInsets.only(left: 36, top: 10, bottom: 38.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Client List",
                style:
                    bodyTextStyle.copyWith(fontSize: 14.sp, fontFamily: roboto),
              ),
              SizedBox(
                width: 136.w,
              ), ////
              ///Edit full name or upper sections
              ///
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 24.h,
                  width: 24.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.orange, width: 1.6),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: ImageContainer(
                      height: 12.h,
                      width: 12.w,
                      assetImage: "$assets/edit.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 35.h),
          Row(
            children: [
              Text(
                "Joe Black  000000",
                style:
                    bodyTextStyle.copyWith(fontSize: 14.sp, fontFamily: roboto),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text(
                "Pin : 0042",
                style:
                    bodyTextStyle.copyWith(fontSize: 14.sp, fontFamily: roboto),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text(
                "Facility : Stillwater",
                style:
                    bodyTextStyle.copyWith(fontSize: 14.sp, fontFamily: roboto),
              ),
            ],
          ),
          SizedBox(height: 34.h),
          Padding(
            padding: EdgeInsets.only(right: 30.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Joe Black  000000",
                          style: bodyTextStyle.copyWith(
                              fontSize: 14.sp, fontFamily: roboto),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Text(
                          "Pin : 0042",
                          style: bodyTextStyle.copyWith(
                              fontSize: 14.sp, fontFamily: roboto),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Text(
                          "Facility : Stillwater",
                          style: bodyTextStyle.copyWith(
                              fontSize: 14.sp, fontFamily: roboto),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
