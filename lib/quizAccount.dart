import 'questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizAccount {
  int _QuestionCount = 0;
  List<Questions> _questionBank = [
    Questions('You can lead a cow down stairs but not up stairs.', false),
    Questions(
        'Approximately one quarter of human bones are in the feet.', true),
    Questions('A slug\'s blood is green.', true)
  ];

  void next() {
    if (_QuestionCount < (_questionBank.length - 1)) {
      _QuestionCount++;
    }
  }

  String getQuestionText() {
    return _questionBank[_QuestionCount].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_QuestionCount].questionAnswers;
  }
}
