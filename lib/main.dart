import 'package:flutter/material.dart';
import 'package:quizzler/start_page.dart';

import 'questions.dart';

void main() => runApp(StartPage());

class Quizzer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.all_inclusive),
          title: Text('QUize\'s App'),
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  //list for Answers
  List<Widget> scoreKeeper = [];
  //TODO: Here we put the question and answers
  List<Questions> questionBank = [
    Questions(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Questions(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Questions(q: 'A slug\'s blood is green.', a: true)
  ];
  int QuestionCount = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[QuestionCount].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                bool correctAnswers =
                    questionBank[QuestionCount].questionAnswers;
                if (correctAnswers == true) {
                  print('user got it right!');
                } else {
                  print('user got it wrong');
                }
                setState(() {
                  QuestionCount++;
                  scoreKeeper.add(Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswers =
                    questionBank[QuestionCount].questionAnswers;
                if (correctAnswers == false) {
                  print('user got it right!');
                } else {
                  print('user got it wrong');
                }
                //The user picked false.
                setState(() {
                  QuestionCount++;
                  scoreKeeper.add(Icon(
                    Icons.close,
                    color: Colors.red,
                  ));
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
'This is where the question text will go.'
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/