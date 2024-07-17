import 'package:flutter/material.dart';

import '../../style/my_theme_app.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: MyThemeApp.lightTheme.textTheme.headlineLarge,
            ),
          ),
        )
      ],
    );
  }
}
