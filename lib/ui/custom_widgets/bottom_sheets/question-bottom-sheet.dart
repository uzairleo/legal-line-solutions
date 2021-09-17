import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';

class CreateQuestionBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        height: 1.sh / 1.4,
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
        child: Padding(
          padding: EdgeInsets.only(
            top: 32.h,
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
              Container(
                height: 60.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0.r),
                    border: Border.all(color: Colors.grey.withOpacity(0.3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 60.h,
                      width: 71.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6.r),
                            bottomRight: Radius.circular(6.r),
                          ),
                          color: primaryColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
