import 'package:flutter/material.dart';

import 'quizAccount.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  QuizAccount quizbank = QuizAccount();

  /*void check(int ANS) {
    int correctAnswers = quizbank.getQuestionAnswer();
    setState(() {
      if (ANS == correctAnswers) {
        quizbank.next();
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        quizbank.next();
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        leading: Icon(Icons.all_inclusive),
        title: Text('QUize\'s App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizbank.getQuestionText(),
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
            child: ListView(
              children: <Widget>[
                FlatButton(
                  color: Colors.red,
                  child: Text(
                    quizbank.getQuestionAns1(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      quizbank.next();
                    });
                  },
                ),
                FlatButton(
                  color: Colors.red,
                  child: Text(
                    quizbank.getQuestionAns2(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      quizbank.next();
                    });
                  },
                ),
                FlatButton(
                  color: Colors.red,
                  child: Text(
                    quizbank.getQuestionAns3(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      quizbank.next();
                    });
                  },
                ),
                FlatButton(
                  color: Colors.red,
                  child: Text(
                    quizbank.getQuestionAns4(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      quizbank.next();
                    });
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
