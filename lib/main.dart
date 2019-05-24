import 'package:flutter/material.dart';
import 'package:quizzler/quiz_page.dart';
import 'package:quizzler/start_page.dart';
import 'package:quizzler/themes.dart';

import 'about_us_page.dart';
import 'consts.dart';
import 'result_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => StartPage(
              notifyParent: this.refresh,
            ),
        '/quiz': (context) => QuizPage(
              notifyMainApp: this.refresh,
            ),
        '/about': (context) => AboutPage(),
        '/result': (context) => ResultPage()
      },
      theme: currentTheme == ThemeType.Light ? lightTheme : darkTheme,
    );
  }
}
