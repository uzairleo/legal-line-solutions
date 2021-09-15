import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';

class RectangularButton extends StatelessWidget {
  final String? title;
  final onTap;
  final Color? buttonColor;
  final TextStyle? textStyle;
  final double? width;
  final double? radius;

  RectangularButton(
      {this.onTap,
      this.title,
      this.buttonColor,
      this.textStyle,
      this.width,
      this.radius = 0});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: 42.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius!), color: buttonColor),
        child: Center(child: Text(title!, style: textStyle)),
      ),
    );
  }
}
