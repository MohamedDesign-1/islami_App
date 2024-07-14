import 'package:flutter/material.dart';
import 'package:islamiapp/pages/hadeth/hadeth_tab.dart';
import 'package:islamiapp/style/app_color.dart';
import 'package:islamiapp/widgets/item_hadeth.dart';

import '../../style/my_theme_app.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'Hadeth_details';

  const HadethDetailsScreen({Key? key}) : super(key: key);

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
                      args.title,
                      style: MyThemeApp.lightTheme.textTheme.titleLarge,
                    )),
                    Divider(
                      color: MyThemeApp.lightTheme.dividerColor,
                      thickness: 2,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.width * 0.01,
                    horizontal: MediaQuery.of(context).size.height * 0.04,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.cardColor,
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ItemHadeth(
                        content: args.content[index],
                      );
                    },
                    itemCount: args.content.length,
                  ),
                ),
              ),
            ],
          ))
    ]);
  }
}