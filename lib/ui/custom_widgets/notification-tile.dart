import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';

class NotificationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: Column(
        children: [
          Container(
            height: 163.52.h,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 33.2, right: 38.0),
              child: Row(
                children: [
                  ImageContainer(
                    height: 50.h,
                    width: 40.w,
                    assetImage: "$assets/message_icon.png",
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 38.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Message",
                            style: headingTextStyle.copyWith(
                                fontSize: 24.sp, fontFamily: roboto)),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text("You have around 8 messages",
                            style: headingTextStyle.copyWith(
                                fontSize: 20.sp,
                                color: Colors.black26,
                                fontFamily: roboto)),
                        SizedBox(
                          height: 38.h,
                        ),
                        Text("Just Now",
                            style: headingTextStyle.copyWith(
                                fontSize: 20.sp,
                                color: Colors.black26,
                                fontFamily: roboto))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 1.sw,
            height: 1.8.h,
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
