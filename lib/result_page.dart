import 'dart:math';

import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'consts.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String result = listOfResults[Random().nextInt(13)];
  int stupidity = (Random().nextInt(80) + 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نتيجتك'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              result,
              style: Theme.of(context).textTheme.display1,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            Text("نسبة غبائك هي $stupidity%",
                style: Theme.of(context).textTheme.display1,
                textDirection: TextDirection.rtl),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text("مشاركة النتيجة",
                  style: flatButtonTextStyle, textDirection: TextDirection.rtl),
              onPressed: () {
                setState(() {
                  Share.share(result);
                });
              },
            ),
            FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text("مشاركة التطبيق",
                  style: flatButtonTextStyle, textDirection: TextDirection.rtl),
              onPressed: () {
                setState(() {
                  Share.share(
                      "قم بتجربة اختبار الغباء لتعرف إذا كنت غبيًا أو لا!$lemonLabDev ");
                });
              },
            ),
          ],
        ),
      )),
    );
  }
}
