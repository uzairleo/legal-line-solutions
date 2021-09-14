import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';

class RoundedRaisedButton extends StatelessWidget {
  final buttonText;
  final onPressed;
  final color;
  final textColor;
  final fontWeight;
  RoundedRaisedButton(
      {this.buttonText,
      this.fontWeight = FontWeight.normal,
      this.onPressed,
      this.color = primaryColor,
      this.textColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: RaisedButton(
        onPressed: this.onPressed,
        color: this.color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        padding: const EdgeInsets.only(),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 88.0,
              minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            '$buttonText',
            style: buttonTextStyle.copyWith(
                fontFamily: roboto,
                fontSize: 16.sp,
                color: this.textColor,
                fontWeight: this.fontWeight),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
