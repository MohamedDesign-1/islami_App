import 'package:flutter/material.dart';
import 'package:islamiapp/home/homescreen.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Homescreen.routeName,
        routes: {
          Homescreen.routeName: (context) => Homescreen(),
        });
  }
}