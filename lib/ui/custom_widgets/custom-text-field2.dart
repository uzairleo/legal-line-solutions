import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';

class CustomTextField2 extends StatelessWidget {
  final controller;
  final bool? obscure;
  final String? errorText;
  final String? hintText;
  final bool? enabled;
  final Widget? suffixIcon;
  final validator;
  final double? fontSize;
  final String? label;
  final inputType;
  final int maxLine;
  final onSaved;
  final ontap;
  final bool disableBorder;
  CustomTextField2(
      {this.controller,
      this.ontap,
      this.disableBorder = false,
      this.label,
      this.maxLine = 1,
      this.inputType = TextInputType.text,
      this.obscure = false,
      this.enabled = true,
      this.validator,
      this.errorText,
      this.fontSize = 14.0,
      this.hintText,
      this.onSaved,
      this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 40.96.h * maxLine,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 2, // has the effect of softening the shadow
                    spreadRadius: 0.6, // has the effect of extending the shadow
                    offset: Offset(
                      0, // horizontal, move right 10
                      0.4, // vertical, move down 10
                    ),
                  ),
                ])),
        TextFormField(
          onTap: ontap,
          onSaved: onSaved,
          enabled: enabled,
          style: subBodyTextStyle.copyWith(fontSize: this.fontSize),
          cursorColor: mainThemeColor,
          controller: this.controller,
          obscureText: this.obscure!,
          maxLines: maxLine,
          validator: validator,
          keyboardType: inputType,
          decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              isDense: true,
              errorStyle: TextStyle(
                fontSize: 10,
                fontFamily: 'OpenSans',
              ),
              // alignLabelWithHint: true,
              suffixIcon: Padding(
                  padding: const EdgeInsets.only(),
                  child: suffixIcon != null ? suffixIcon : Container()),
              suffixIconConstraints:
                  BoxConstraints(maxHeight: 40, maxWidth: 50),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              // EdgeInsets.only(left: 21.0, top: 10),
              hintText: this.hintText,
              // errorStyle: TextStyle(fontSize: 8, height: 1),
              hintStyle: subBodyTextStyle.copyWith(
                  color: disableBorder ? greyColor : Color(0XFF686868),
                  fontSize: fontSize)),
        ),
      ],
    );
  }
}
