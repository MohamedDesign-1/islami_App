import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/pages/hadeth/item_hadeth_name.dart';
import 'package:islamiapp/style/app_color.dart';

import '../../style/my_theme_app.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadHadeth();
    }
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
            children: [
              Image.asset('assets/images/hadeth_logo.png'),
              Divider(
                color: MyThemeApp.lightTheme.dividerColor,
                thickness: 2,
              ),
              Text(
                'اسم الحديث',
                style: MyThemeApp.lightTheme.textTheme.headlineMedium,
              ),
              Divider(
                color: MyThemeApp.lightTheme.dividerColor,
                thickness: 2,
              ),
              ahadethList.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: AppColor.primaryLightColor,
                      ),
                    )
                  : Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: ItemHadethName(
                                  hadeth: ahadethList[index],
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            color: MyThemeApp.lightTheme.dividerColor,
                            thickness: 2,
                          );
                        },
                        itemCount: ahadethList.length,
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }

  void loadHadeth() async {
    String hadethContent = await rootBundle.loadString('assets/ahadeth.txt');
    List<String> hadethList = hadethContent.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethLines);
      ahadethList.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}