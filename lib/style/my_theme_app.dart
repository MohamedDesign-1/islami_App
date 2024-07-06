import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamiapp/style/app_color.dart';

class MyThemeApp {
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: AppColor.divider,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.cairo(
          color: AppColor.darkGray,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: GoogleFonts.cairo(
          color: AppColor.darkGray,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: GoogleFonts.cairo(
          color: AppColor.darkGray,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ));
}
