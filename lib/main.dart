import 'package:flutter/material.dart';
import 'package:quizzler/quiz_page.dart';
import 'package:quizzler/start_page.dart';

void main() => runApp(Quizzer());

class Quizzer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {'/quiz': (context) => QuizPage()},
        theme: ThemeData(fontFamily: 'Lalezar'),
        home: StartPage());
  }
}
