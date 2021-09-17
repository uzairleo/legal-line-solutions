import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';

import 'image-container.dart';

class ManageUserTile extends StatelessWidget {
  const ManageUserTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 38.6.h),
      child: Container(
        height: 278.4.h,
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8, // has the effect of softening the shadow
            spreadRadius: 1.2, // has the effect of extending the shadow
            offset: Offset(
              0, // horizontal, move right 10
              0.4, // vertical, move down 10
            ),
          )
        ], color: Color(0XFFF9FAFC), borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          children: [
            Container(
              height: 58.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFFF9FAFC),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 8, // has the effect of softening the shadow
                    spreadRadius: 1.2, // has the effect of extending the shadow
                    offset: Offset(
                      0, // horizontal, move right 10
                      0.4, // vertical, move down 10
                    ),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  "Lawyer details",
                  style: bodyTextStyle.copyWith(
                    fontSize: 20.sp,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lawyer Name",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Text(
                        "Lawyer Name",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Text(
                        "Lawyer Name",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Lawyer Name",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Manage",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black54),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Karen ops",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Text(
                        "Karenops@gmail.com",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Text(
                        "0336 2846 729",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Firm User                          ",
                        style: bodyTextStyle.copyWith(
                            fontSize: 14.sp, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Container(
                        height: 26.h,
                        width: 58.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4.r),
                            border: Border.all(color: Colors.orange)),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: bodyTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
