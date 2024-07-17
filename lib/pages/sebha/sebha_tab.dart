import 'package:flutter/material.dart';

import '../../style/app_color.dart';
import '../../style/my_theme_app.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0.0;

  static int counter = 0;

  String tasebhat = 'سبحان الله';

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Stack(children: [
                    Image.asset('assets/images/head_sebha_logo.png'),
                    AnimatedRotation(
                      turns: turns,
                      duration: const Duration(seconds: 1),
                      child: InkWell(
                          onTap: () {
                            checkTasbeh();
                            setState(() {
                              counter++;
                              turns += 0.25;
                              checkTasbeh();
                            });
                          },
                          child:
                              Image.asset('assets/images/body_sebha_logo.png')),
                    )
                  ]),
                  SizedBox(
                    height: 48,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'عدد التسبيحات',
                    style: MyThemeApp.lightTheme.textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                        color: AppColor.primaryLightColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      '$counter',
                      style: MyThemeApp.lightTheme.textTheme.titleLarge,
                    )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.all(16),
                    height: 64,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyThemeApp.lightTheme.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      tasebhat,
                      style: MyThemeApp.lightTheme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void checkTasbeh() {
    if (counter == 1) {
      tasebhat = 'سبحان الله';
    }
    if (counter == 33) {
      tasebhat = 'الحمدالله';
    }
    if (counter == 66) {
      tasebhat = 'الله اكبر';
    }
    if (counter == 99) {
      tasebhat = 'لا اله الا الله وحده لا شريك له  له الملك وله الحمد';
    }
    if (counter == 100) {
      counter = 0;
    }
  }
}

/// Step one = if user pressed on Images = counter++ and limit 33