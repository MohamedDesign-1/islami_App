import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    String tasebhat = AppLocalizations.of(context)!.subhan_allah;

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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: MyThemeApp.lightTheme.textTheme.headlineLarge,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -1,
                    child: Image.asset(
                      'assets/images/head_sebha_logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    // ضبط هذه القيمة حسب الحاجة
                    child: AnimatedRotation(
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
                        child: Image.asset('assets/images/body_sebha_logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.sebha_number,
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
      tasebhat = AppLocalizations.of(context)!.subhan_allah;
    }
    if (counter == 33) {
      tasebhat = AppLocalizations.of(context)!.alhamdulillah;
    }
    if (counter == 66) {
      tasebhat = AppLocalizations.of(context)!.allahu_akbar;
    }
    if (counter == 99) {
      tasebhat = AppLocalizations.of(context)!.la_ilaha_illa_allah;
    }
    if (counter == 100) {
      counter = 0;
    }
  }
}
