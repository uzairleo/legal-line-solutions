import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';

class ProgressWidget extends StatefulWidget {
  final value;
  final labelStarts;
  final labelEnds;
  ProgressWidget({this.value, this.labelEnds, this.labelStarts});

  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0.h,
      child: Stack(
        children: [
          //main progress indicator
          mainProgress(context),

          //progressValue
          progressValue((1.sw / 3) * widget.value),

          //head of progress value
          indicator((1.sw / 3) * widget.value),

          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.labelStarts,
                  style: headingTextStyle.copyWith(
                      fontSize: 12.sp, color: Colors.black54),
                ),
                SizedBox(
                  width: 1.sw / 3.8,
                ),
                Text(
                  widget.labelEnds,
                  style: headingTextStyle.copyWith(
                      fontSize: 12.sp, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  indicator(double width) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 12.0.h,
        width: width,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(),
            ),
            Container(
              height: 10.h,
              width: 10.w,
              decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 6,
                        spreadRadius: 2,
                        offset: Offset(1, 2),
                        color: Colors.grey.withOpacity(0.8))
                  ]),
            )
          ],
        ),
      ),
    );
  }

  mainProgress(context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 3.h,
        width: 1.sw / 3,
        decoration: BoxDecoration(
          color: Color(0XFF707070).withOpacity(0.38),
          border: Border.all(width: .5, color: mainThemeColor.withAlpha(7)),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.grey.withOpacity(0.6),
          //       blurRadius: 1,
          //       spreadRadius: 1,
          //       offset: Offset(1, -1))
          // ],
        ),
      ),
    );
  }

  progressValue(double width) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 3.h,
        width: width.w,
        decoration: BoxDecoration(
          color: primaryColor,
          border: Border.all(width: .5, color: primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          // boxShadow: [
          //   BoxShadow(
          //       color: mainThemeColor.withOpacity(0.6),
          //       blurRadius: 1,
          //       spreadRadius: 1,
          //       offset: Offset(1, -1))
          // ],
        ),
      ),
    );
  }
}
