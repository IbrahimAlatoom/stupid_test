import 'package:flutter/material.dart';

import 'quizAccount.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  QuizAccount quizbank = QuizAccount();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
          )
        ],
        title: Text('اختبار الغباء'),
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
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.blue[100],
            child: Center(
              child: Text('ADS'),
            ),
          )
        ],
      ),
    );
  }
}
