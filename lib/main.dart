import 'package:flutter/material.dart';
import 'package:islamiapp/pages/home/homescreen.dart';
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
        });
  }
}