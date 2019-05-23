import 'dart:math';

import 'choice.dart';
import 'questions.dart';

//TODO:: COMPLETE ALL QUESTIONS, DO NOT WORRY ABOUT THE VALUE CHOICE.

class QuizAccount {
  int _QuestionCount = 0;
  List<Questions> _questionBank = [
    Questions(
      questionText: 'لماذا نزلت التطبيق؟',
      choice_1: Choice(data: 'لمعرفة كمية غبائك.', value: Random().nextInt(3)),
      choice_2: Choice(
          data: 'لمعرفة إذا كنت غبيًا أم لا.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'لأنك تشعر بالغباء.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'لأنك غبي.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'إذا كان هناك 6 تفاحات، وأخذت 4. كم تفاحة سيظل معك؟',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: ' أي التالية موجود في الحقيقة؟',
      choice_1:
          Choice(data: 'زجاج مصنوع من البلاستيك', value: Random().nextInt(3)),
      choice_2:
          Choice(data: 'بطارية مصنوعة من الخشب', value: Random().nextInt(3)),
      choice_3: Choice(data: 'نجمة من نار', value: Random().nextInt(3)),
      choice_4: Choice(data: 'لا شيء مما سبق.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText:
          ' والد تيسير عنده 5 أطفال. عقلة، خلف، عوض، عصام، الخامس هو؟',
      choice_1: Choice(data: 'خليفة', value: Random().nextInt(3)),
      choice_2: Choice(data: 'عاقل', value: Random().nextInt(3)),
      choice_3: Choice(data: 'معتز', value: Random().nextInt(3)),
      choice_4: Choice(data: 'تيسير', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'كم حرف في الكلمة غباء',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: 'بتتخوث ؟', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'هل توقع غير المتوقع، يجعل غير المتوقع متوقع؟',
      choice_1: Choice(data: 'نعم', value: Random().nextInt(3)),
      choice_2: Choice(data: 'لا', value: Random().nextInt(3)),
      choice_3: Choice(data: 'Yes', value: Random().nextInt(3)),
      choice_4: Choice(data: 'No', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'ما اليوم الذي يلي البارحة، ويسبق الغد؟',
      choice_1: Choice(data: 'أمس', value: Random().nextInt(3)),
      choice_2: Choice(data: 'الغد', value: Random().nextInt(3)),
      choice_3: Choice(data: 'اليوم', value: Random().nextInt(3)),
      choice_4: Choice(data: 'لا شيء مما سبق', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'ما الحرف الذي يسبق حرف الواو في الأبجدية؟',
      choice_1: Choice(data: 'دال', value: Random().nextInt(3)),
      choice_2: Choice(data: 'هاء', value: Random().nextInt(3)),
      choice_3: Choice(data: 'زين(زاي)', value: Random().nextInt(3)),
      choice_4: Choice(data: 'عين', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'هل تعتقد أنك غبي؟',
      choice_1: Choice(data: 'نعم', value: Random().nextInt(3)),
      choice_2: Choice(data: 'لا', value: Random().nextInt(3)),
      choice_3: Choice(data: 'لا أعرف', value: Random().nextInt(3)),
      choice_4:
          Choice(data: 'لعاد انا منزل تطبيقك لويش', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'هل تشعر بأنك ذكي؟',
      choice_1:
          Choice(data: 'نعم، لذلك قررت التأكد.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'لا.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'أحيانًا.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'انداري', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'هل يقال عنك أرعن؟',
      choice_1: Choice(data: 'لا.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'نعم.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'دائمًا.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'ما معنى ذلك؟', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'كم كوكبًا في النظام الشمسي؟',
      choice_1: Choice(data: '7', value: Random().nextInt(3)),
      choice_2: Choice(data: '9', value: Random().nextInt(3)),
      choice_3: Choice(data: '10', value: Random().nextInt(3)),
      choice_4: Choice(data: '6', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'طائرة تمر من فوق مثلث برمودا، أين يدفن من ظل حيًا؟',
      choice_1: Choice(data: 'بضلوا بالطيارة', value: Random().nextInt(3)),
      choice_2: Choice(data: 'إسبانيا', value: Random().nextInt(3)),
      choice_3: Choice(data: 'كارولينا الشمالية', value: Random().nextInt(3)),
      choice_4: Choice(data: 'فلوريدا', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'حاصل جمع الأرقام من 1 إلى 10 هو',
      choice_1: Choice(data: '55', value: Random().nextInt(3)),
      choice_2: Choice(data: '40', value: Random().nextInt(3)),
      choice_3: Choice(data: '35', value: Random().nextInt(3)),
      choice_4: Choice(data: '11', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'كمية التراب في حفرة مساحتها 2 متر مكعب هي؟',
      choice_1: Choice(data: '8 أمتار.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'الكثير.', value: Random().nextInt(3)),
      choice_3: Choice(data: '8 أمتار مكعبة.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'لا تراب.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '1', value: Random().nextInt(3)),
    ),
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
