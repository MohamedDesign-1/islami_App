import 'package:flutter/material.dart';
import 'package:islamiapp/pages/hadeth/hadeth_details_screen.dart';
import 'package:islamiapp/pages/home/homescreen.dart';
import 'package:islamiapp/pages/quran/sura_details_screen.dart';
import 'package:islamiapp/style/my_theme_app.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyThemeApp.lightTheme,
        initialRoute: Homescreen.routeName,
        routes: {
          Homescreen.routeName: (context) => Homescreen(),
          SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
          HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
        });
  }
}