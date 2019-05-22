import 'package:quizzler/questions.dart';

import 'choice.dart';

class QuizAccount {
  int _QuestionCount = 0;
  List<Questions> _questionBank = [
    Questions(
        questionText: 'how are you',
        choice_1: Choice(data: 'wow', value: 1),
        choice_2: Choice(data: 'wow', value: 2),
        choice_3: Choice(data: 'wow', value: 2),
        choice_4: Choice(data: 'wow', value: 2))
  ];

  void next() {
    if (_QuestionCount < (_questionBank.length - 1)) {
      _QuestionCount++;
    }
  }

  String getQuestionText() {
    return _questionBank[_QuestionCount].questionText;
  }

  String getQuestionAns1() {
    return _questionBank[_QuestionCount].choice_1.data;
  }

  String getQuestionAns2() {
    return _questionBank[_QuestionCount].choice_2.data;
  }

  String getQuestionAns3() {
    return _questionBank[_QuestionCount].choice_3.data;
  }

  String getQuestionAns4() {
    return _questionBank[_QuestionCount].choice_4.data;
  }
}
