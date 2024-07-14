import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/style/app_color.dart';
import 'package:islamiapp/widgets/item_sura.dart';

import '../../style/my_theme_app.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  const SuraDetailsScreen({Key? key}) : super(key: key);

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFiles(args.index);
    }
    return Stack(children: [
      Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.fill,
          )),
      Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: MyThemeApp.lightTheme.textTheme.headlineLarge,
            ),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * 0.05,
                  horizontal: MediaQuery.of(context).size.height * 0.04,
                ),
                color: AppColor.cardColor,
                child: Column(
                  children: [
                    Center(
                        child: Text(
                      '${args.name}',
                      style: MyThemeApp.lightTheme.textTheme.titleLarge,
                    )),
                    Divider(
                      color: MyThemeApp.lightTheme.dividerColor,
                      thickness: 2,
                    ),
                  ],
                ),
              ),
              verses.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                      color: AppColor.primaryLightColor,
                    ))
                  : Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.01,
                          horizontal: MediaQuery.of(context).size.height * 0.04,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.cardColor,
                        ),
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: MyThemeApp.lightTheme.dividerColor,
                              thickness: 2,
                            );
                          },
                          itemBuilder: (context, index) {
                            return ItemSura(
                              content: verses[index],
                              index: index,
                            );
                          },
                          itemCount: verses.length,
                        ),
                      ),
                    ),
            ],
          ))
    ]);
  }

  /// Load Files
  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    for (int i = 0; i < lines.length; i++) {
      print(lines[i]);
    }
    verses = lines;
    setState(() {});
  }
}

///Data Claas
class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
