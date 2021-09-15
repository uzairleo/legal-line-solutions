import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';

class ConversationTile extends StatelessWidget {
  final index;
  ConversationTile(this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        height: 71.h,
        // width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.r),
            color: index == 0 ? primaryColor : Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ImageContainer(
                height: 16.h,
                width: 16.w,
                assetImage:
                    index == 0 ? "$assets/online.png" : "$assets/offline.png",
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Franky Schmidt, Annie …",
                    style: bodyTextStyle.copyWith(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 16.sp,
                        color: index == 0 ? Colors.white54 : Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "That was wonderful. Thanks…",
                    style: bodyTextStyle.copyWith(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 12.sp,
                        color: index == 0 ? Colors.white54 : Colors.black54,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(width: 28.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "03643540",
                        style: bodyTextStyle.copyWith(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 12.sp,
                            color: index == 0 ? Colors.white54 : Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                      index != 0
                          ? Padding(
                              padding: EdgeInsets.only(left: 28.0.w),
                              child: Text("08:05",
                                  style: bodyTextStyle.copyWith(
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily,
                                      fontSize: 12.sp,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w500)),
                            )
                          : Container()
                    ],
                  ),
                  Text(
                    "",
                    style: bodyTextStyle.copyWith(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 12.sp,
                        color: Colors.white54,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(width: index == 0 ? 31.w : 0),
              index == 0
                  ? Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Color(0XFF76C00D), shape: BoxShape.circle),
                      child: Center(
                        child: Text("3",
                            style: bodyTextStyle.copyWith(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
