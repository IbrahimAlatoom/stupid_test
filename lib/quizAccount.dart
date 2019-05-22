import 'questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizAccount {
  int _QuestionCount = 0;
  List<Questions> _questionBank = [
    Questions('1.لماذا نزلت التطبيق؟', 'لمعرفة كمية غبائك',
        'لمعرفة إذا كنت غبيًا أم لا', 'لأنك تشعر بالغباء.', 'لأنك غبي.', 0),
    Questions('2.إذا كان هناك 6 تفاحات وأخذت 4. كم تفاحة سيظل معك؟', '5', '4',
        '3', '2', 1)
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
    return _questionBank[_QuestionCount].questionAnswers1;
  }

  String getQuestionAns2() {
    return _questionBank[_QuestionCount].questionAnswers2;
  }

  String getQuestionAns3() {
    return _questionBank[_QuestionCount].questionAnswers3;
  }

  String getQuestionAns4() {
    return _questionBank[_QuestionCount].questionAnswers4;
  }

  int getQuestionAnswer() {
    return _questionBank[_QuestionCount].rightAns;
  }
}
