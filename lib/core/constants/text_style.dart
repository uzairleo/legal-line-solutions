import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle headingTextStyle = TextStyle(
  fontFamily: "OpenSans",
  fontSize: 25,
  fontWeight: FontWeight.w600,
);
TextStyle headingTextStyle2 = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Poppins',
);

///
/// All corners rounded except bottom right
///
const BorderRadius chatBorderRadiusRight = BorderRadius.only(
  topLeft: Radius.circular(20.0),
  topRight: Radius.circular(20.0),
  bottomLeft: Radius.circular(20.0),
);

///
/// All corners rounded except bottom left
///
const BorderRadius chatBorderRadiusLeft = BorderRadius.only(
  topLeft: Radius.circular(20.0),
  bottomRight: Radius.circular(20.0),
  topRight: Radius.circular(20.0),
);

TextStyle subBodyTextStyle = TextStyle(
  fontFamily: "OpenSans",
  fontSize: 14,
);
TextStyle subBodyTextStyle2 = TextStyle(
  fontSize: 14,
  color: Colors.black,
  fontFamily: 'Poppins',
);

const largeheadingTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  color: Colors.black,
  fontFamily: 'Poppins',
);
const largeheadingTextStyle2 = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  color: Colors.black,
  fontFamily: 'OpenSans',
);
const subHeadingTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
  color: Colors.black,
  fontFamily: 'Poppins',
);

const bodyTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontFamily: 'Poppins',
);

TextStyle buttonTextStyle = TextStyle(
  fontFamily: "OpenSans",
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const buttonTextStyle2 = TextStyle(
  fontSize: 12,
  color: Colors.black,
  fontWeight: FontWeight.w600,
  fontFamily: 'Poppins',
);

const labelTextStyle = TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  color: Color.fromARGB(255, 106, 113, 100),
);

const labelTextStyle2 = TextStyle(
  fontSize: 12,
  fontFamily: 'Poppins',
  color: Colors.black,
);

const categoryTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  fontFamily: 'Poppins',
);
const categoryTextStyle3 = TextStyle(
  color: Colors.black,
  fontSize: 12,
  fontWeight: FontWeight.w600,
  fontFamily: 'Poppins',
);

const tabBarTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  fontFamily: 'Poppins',
);
const tabBarTextStyle2 = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  fontFamily: 'Poppins',
);

const categoryTextStyle2 = TextStyle(
  color: Color.fromARGB(255, 106, 113, 100),
  fontSize: 12,
  fontWeight: FontWeight.w500,
  fontFamily: 'Poppins',
);

const appBarTextStyle = TextStyle(
  fontSize: 14,
  color: Colors.black,
  fontWeight: FontWeight.w600,
  fontFamily: 'Poppins',
);

const appBarTextStyle3 = TextStyle(
  fontSize: 14,
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontFamily: 'Poppins',
);

TextStyle normalTextFont = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.normal,
  fontFamily: 'Poppins',
);

TextStyle boldTextFont = TextStyle(
    fontFamily: 'Poppins', color: Colors.black, fontWeight: FontWeight.w900);

///Chat textStyles
final chatTextStyleLeft = TextStyle(
  color: Colors.grey,
  fontSize: 15.0,
);

const chatTextStyleRight = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
);

const chatTimeTS = TextStyle(
    fontSize: 12, color: Color(0xFFB2BEC3), fontWeight: FontWeight.w600);

TextStyle subtitleTextFont = TextStyle(
    fontFamily: 'Poppins',
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 12);
