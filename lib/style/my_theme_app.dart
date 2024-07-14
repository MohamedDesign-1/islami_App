import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamiapp/style/app_color.dart';

class MyThemeApp {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: AppColor.primaryLightColor,
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: AppColor.divider,
      cardColor: AppColor.cardColor,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
          iconTheme: IconThemeData(color: AppColor.darkGray)),
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
        titleLarge: GoogleFonts.cairo(
          color: AppColor.darkGray,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.cairo(
          color: AppColor.darkGray,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColor.primaryLightColor,
          selectedItemColor: AppColor.bottomIconNavStyle,
          type: BottomNavigationBarType.shifting),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColor.primaryLightColor),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        elevation: const WidgetStatePropertyAll(0),
      )));
}
