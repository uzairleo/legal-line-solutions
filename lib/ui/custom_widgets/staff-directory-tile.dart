import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';

class StaffDirectoryTil extends StatefulWidget {
  const StaffDirectoryTil({Key? key}) : super(key: key);

  @override
  _StaffDirectoryTilState createState() => _StaffDirectoryTilState();
}

class _StaffDirectoryTilState extends State<StaffDirectoryTil> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 86.h,
        width: double.infinity,
        decoration: BoxDecoration(
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
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Transform.scale(
                    scale: 0.8,
                    child: Checkbox(
                        activeColor: Color(0XFF6200EE),
                        value: isSelected,
                        onChanged: (value) {
                          isSelected = value!;
                          setState(() {});
                        })),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Franky Schmidt, Annie …",
                      style: bodyTextStyle.copyWith(
                          fontSize: 16.sp,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                    Text(
                      "0336487",
                      style: bodyTextStyle.copyWith(
                          fontSize: 16.sp,
                          color: Colors.black45,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: ImageContainer(
                  assetImage: "$assets/more2.png",
                  height: 24.82.h,
                  width: 3.6.w,
                ))
          ],
        ),
      ),
    );
  }
}
