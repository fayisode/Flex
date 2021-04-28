import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

//following the Tetradic Color Code Format
class LightColor {
  static const Color scaffoldBackgroundColor = Color(0xFFF3F5F7);
  static const Color titleTextColor = const Color(0xff040405);
  static const Color subTitleTextColor = const Color(0xFFF3F5F7);
  static const Color backgroundColor = Color(0xFF49BEB7);
  static const Color lightbackgroundColor = Color(0xFF18efdc);
  static const Color colorsCode1 = Color(0xFF7D49BE);
  static const Color lightcolorsCode1 = Color(0xFFb091d8);
  static const Color colorsCode2 = Color(0xFFBE4950);
  static const Color lightcolorsCode2 = Color(0xFFda979b);
  static const Color colorsCode3 = Color(0xFF8BBE49);
  static const Color lightcolorsCode3 = Color(0xFFf8fcf3); //d7edba
  static const Color black = Color(0xff040405);
  static const Color lightblack = Color(0xff3E404D);
  static const Color lightGrey = Color(0xfff1f1f3);
}

const Color lightcolorsCode3 = Color(0xFFd7edba);
final heightSizer = 1.0.h;
final widthSizer = 1.0.w;
final kDefaultPadding = heightSizer + 3;
final kDefaultWidthPadding = widthSizer * 3;
final textSizer = 1.0.sp;

class AppTheme {
  const AppTheme();
  static ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.blue,
      backgroundColor: LightColor.scaffoldBackgroundColor,
      primaryColor: LightColor.colorsCode1,
      cardTheme: CardTheme(color: LightColor.lightcolorsCode3),
      textTheme: TextTheme(headline4: TextStyle(color: LightColor.black)),
      iconTheme: IconThemeData(color: LightColor.colorsCode2),
      bottomAppBarColor: LightColor.backgroundColor,
      dividerColor: LightColor.lightGrey,
      primaryTextTheme: TextTheme(
          bodyText1: GoogleFonts.lato(
              textStyle: TextStyle(color: LightColor.titleTextColor))));

  static TextStyle titleStyle = GoogleFonts.lato(
      textStyle: TextStyle(color: LightColor.titleTextColor, fontSize: 16));
  static TextStyle subTitleStyle = GoogleFonts.lato(
      textStyle: TextStyle(color: LightColor.subTitleTextColor, fontSize: 12));

  static TextStyle h1Style = GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 18.5.sp, fontWeight: FontWeight.bold));
  static TextStyle h2Style = GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 17.0.sp, color: LightColor.black));
  static TextStyle h3Style = GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 15.5.sp, color: LightColor.black));
  static TextStyle h4Style = GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 15.0.sp, color: LightColor.black));
  static TextStyle h5Style = GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 13.0.sp, color: LightColor.black));
  static TextStyle h6Style = GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 11.0.sp, color: LightColor.black));
}

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: kDefaultPadding * 5,
  color: Colors.white.withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: kDefaultPadding * 5,
  color: Colors.black.withOpacity(0.15),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: lightcolorsCode3,
  ),
);
