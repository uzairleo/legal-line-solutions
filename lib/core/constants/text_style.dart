import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final sansPro = GoogleFonts.sourceSansPro().fontFamily;

final roboto = GoogleFonts.roboto().fontFamily;

TextStyle headingTextStyle = TextStyle(
  fontFamily: sansPro,
  fontSize: 25,
  fontWeight: FontWeight.w600,
);
TextStyle headingTextStyle2 = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: roboto,
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
  fontFamily: roboto,
  fontSize: 14,
);

final largeheadingTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  color: Colors.black,
  fontFamily: sansPro,
);
final subHeadingTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
  color: Colors.black,
  fontFamily: sansPro,
);

final bodyTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontFamily: roboto,
);

TextStyle buttonTextStyle = TextStyle(
  fontFamily: roboto,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const labelTextStyle = TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  color: Color.fromARGB(255, 106, 113, 100),
);

const categoryTextStyle = TextStyle(
  color: Colors.black,
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
