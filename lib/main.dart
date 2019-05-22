import 'package:flutter/material.dart';
import 'package:quizzler/quiz_page.dart';
import 'package:quizzler/start_page.dart';

import 'about_us_page.dart';

void main() => runApp(Quizzer());

class Quizzer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/quiz': (context) => QuizPage(),
      '/about': (context) => AboutPage()
    }, theme: ThemeData(fontFamily: 'Lalezar'), home: StartPage());
  }
}
