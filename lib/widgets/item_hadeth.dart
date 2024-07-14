import 'package:flutter/cupertino.dart';
import 'package:islamiapp/style/my_theme_app.dart';

class ItemHadeth extends StatelessWidget {
  String content;

  ItemHadeth({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: MyThemeApp.lightTheme.textTheme.bodyMedium,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
