import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// colors
const Color backgroundColorWhite = Color(0xFFFDFEFF);
const Color backgroundColorBlack = Color(0xFF000814);
const Color primaryColor = Color(0xFF8E1230);
const Color secondaryColor = Color(0xFFDAB1BB);
const Color kDavysGrey = Color(0xFFF3F3F3);
const Color kGrey = Color(0xFF545454);

// text style
final TextStyle kHeading5 = GoogleFonts.poppins(fontSize: 23);
final TextStyle kHeading6 = GoogleFonts.poppins(fontSize: 19, letterSpacing: 0.15);
final TextStyle kSubtitle = GoogleFonts.poppins(fontSize: 15, letterSpacing: 0.15);
final TextStyle kBodyText = GoogleFonts.poppins(fontSize: 13, letterSpacing: 0.25);

// text theme
final kTextTheme = TextTheme(
  headline5: kHeading5,
  headline6: kHeading6,
  subtitle1: kSubtitle,
  bodyText2: kBodyText,
);

// FontWeight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

var boxShadow = BoxShadow(
  color: const Color(0xFFAAAAAA).withOpacity(0.3),
  spreadRadius: 0,
  blurRadius: 40,
  offset: const Offset(0, 4), // changes position of shadow
);

const kColorScheme = ColorScheme(
  primary: primaryColor,
  primaryContainer: primaryColor,
  secondary: secondaryColor,
  secondaryContainer: secondaryColor,
  surface: backgroundColorWhite,
  background: backgroundColorWhite,
  error: Colors.red,
  onPrimary: backgroundColorWhite,
  onSecondary: Colors.white,
  onSurface: Colors.white,
  onBackground: Colors.white,
  onError: Colors.white,
  brightness: Brightness.dark,
);
