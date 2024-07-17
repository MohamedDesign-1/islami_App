import 'package:flutter/material.dart';
import 'package:islamiapp/pages/hadeth/hadeth_tab.dart';
import 'package:islamiapp/pages/quran/quran_tab.dart';
import 'package:islamiapp/pages/radio/radio_tab.dart';
import 'package:islamiapp/pages/sebha/sebha_tab.dart';
import 'package:islamiapp/pages/settings/settings_tab.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                    size: 32,
                  ),
                  label: 'القرأن'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                    size: 32,
                  ),
                  label: 'حديث'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                    size: 32,
                  ),
                  label: 'سبحه'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                    size: 32,
                  ),
                  label: 'راديو'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 32,
                  ),
                  label: 'الاعدادات'),
            ],
          ),
        ),
        body: tabs[selectedIndex]);
  }
}
