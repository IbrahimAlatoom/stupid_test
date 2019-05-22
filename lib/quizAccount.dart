import 'questions.dart';
import 'choice.dart';

class QuizAccount {
  int _QuestionCount = 0;
  List<Questions> _questionBank = [
    Questions(
      questionText: 'لماذا نزلت التطبيق؟',
      choice_1: Choice(data: 'لمعرفة كمية غبائك.', value: 1),
      choice_2: Choice(data: 'لمعرفة إذا كنت غبيًا أم لا.', value: 1),
      choice_3: Choice(data: 'لأنك تشعر بالغباء.', value: 1),
      choice_4: Choice(data: 'لأنك غبي.', value: 1),
    ),
    Questions(
      questionText: 'إذا كان هناك 6 تفاحات، وأخذت 4. كم تفاحة سيظل معك؟',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: ' أي التالية موجود في الحقيقة؟',
      choice_1: Choice(data: 'زجاج مصنوع من البلاستيك', value: 1),
      choice_2: Choice(data: 'بطارية مصنوعة من الخشب', value: 1),
      choice_3: Choice(data: 'نجمة من نار', value: 1),
      choice_4: Choice(data: 'لا شيء مما سبق.', value: 1),
    ),
    Questions(
      questionText:
          ' والد تيسير عنده 5 أطفال. عقلة، خلف، عوض، عصام، الخامس هو؟',
      choice_1: Choice(data: 'خليفة', value: 1),
      choice_2: Choice(data: 'عاقل', value: 1),
      choice_3: Choice(data: 'معتز', value: 1),
      choice_4: Choice(data: 'تيسير', value: 1),
    ),
    Questions(
      questionText: 'كم حرف في الكلمة غباء',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: 'بتتخوث ؟', value: 1),
    ),
    Questions(
      questionText: 'هل توقع غير المتوقع، يجعل غير المتوقع متوقع؟',
      choice_1: Choice(data: 'نعم', value: 1),
      choice_2: Choice(data: 'لا', value: 1),
      choice_3: Choice(data: 'Yes', value: 1),
      choice_4: Choice(data: 'No', value: 1),
    ),
    Questions(
      questionText: 'ما اليوم الذي يلي البارحة، ويسبق الغد؟',
      choice_1: Choice(data: 'أمس', value: 1),
      choice_2: Choice(data: 'الغد', value: 1),
      choice_3: Choice(data: 'اليوم', value: 1),
      choice_4: Choice(data: 'لا شيء مما سبق', value: 1),
    ),
    Questions(
      questionText: 'ما الحرف الذي يسبق حرف الواو في الأبجدية؟',
      choice_1: Choice(data: 'دال', value: 1),
      choice_2: Choice(data: 'هاء', value: 1),
      choice_3: Choice(data: 'زين(زاي)', value: 1),
      choice_4: Choice(data: 'عين', value: 1),
    ),
    Questions(
      questionText: 'هل تعتقد أنك غبي؟',
      choice_1: Choice(data: 'نعم', value: 1),
      choice_2: Choice(data: 'لا', value: 1),
      choice_3: Choice(data: 'لا أعرف', value: 1),
      choice_4: Choice(data: 'لعاد انا منزل تطبيقك لويش', value: 1),
    ),
    Questions(
      questionText: 'هل تشعر بأنك ذكي؟',
      choice_1: Choice(data: 'نعم، لذلك قررت التأكد.', value: 1),
      choice_2: Choice(data: 'لا.', value: 1),
      choice_3: Choice(data: 'أحيانًا.', value: 1),
      choice_4: Choice(data: 'انداري', value: 1),
    ),
    Questions(
      questionText: 'هل يقال عنك أرعن؟',
      choice_1: Choice(data: 'لا.', value: 1),
      choice_2: Choice(data: 'نعم.', value: 1),
      choice_3: Choice(data: 'دائمًا.', value: 1),
      choice_4: Choice(data: 'ما معنى ذلك؟', value: 1),
    ),
    Questions(
      questionText: 'كم كوكبًا في النظام الشمسي؟',
      choice_1: Choice(data: '7', value: 1),
      choice_2: Choice(data: '9', value: 1),
      choice_3: Choice(data: '10', value: 1),
      choice_4: Choice(data: '6', value: 1),
    ),
    Questions(
      questionText: 'طائرة تمر من فوق مثلث برمودا، أين يدفن من ظل حيًا؟',
      choice_1: Choice(data: 'بضلوا بالطيارة', value: 1),
      choice_2: Choice(data: 'إسبانيا', value: 1),
      choice_3: Choice(data: 'كارولينا الشمالية', value: 1),
      choice_4: Choice(data: 'فلوريدا', value: 1),
    ),
    Questions(
      questionText: 'حاصل جمع الأرقام من 1 إلى 10 هو',
      choice_1: Choice(data: '55', value: 1),
      choice_2: Choice(data: '40', value: 1),
      choice_3: Choice(data: '35', value: 1),
      choice_4: Choice(data: '11', value: 1),
    ),
    Questions(
      questionText: 'كمية التراب في حفرة مساحتها 2 متر مكعب هي؟',
      choice_1: Choice(data: '8 أمتار.', value: 1),
      choice_2: Choice(data: 'الكثير.', value: 1),
      choice_3: Choice(data: '8 أمتار مكعبة.', value: 1),
      choice_4: Choice(data: 'لا تراب.', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: '1',
      choice_1: Choice(data: '5', value: 1),
      choice_2: Choice(data: '4', value: 1),
      choice_3: Choice(data: '3', value: 1),
      choice_4: Choice(data: '1', value: 1),
    ),
    Questions(
      questionText: 'كيف عملت باختبار الغباء',
      choice_1: Choice(data: 'اديت كويس', value: 1),
      choice_2: Choice(data: 'طبلت', value: 1),
      choice_3: Choice(data: 'ممتاز كثير الامتحان', value: 1),
      choice_4: Choice(data: 'برشلونه فازت على ريال مدريد', value: 1),
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
