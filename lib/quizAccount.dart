import 'dart:math';

import 'choice.dart';
import 'questions.dart';

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
      choice_4: Choice(data: '8', value: Random().nextInt(3)),
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
      questionText: 'عندما تتحدث فإن الآخرين…',
      choice_1: Choice(data: 'يركضون.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'ينادوك بالغبي.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'يهربون.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'يتحدثون.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText:
          'قطار كهربائي يسير بسرعة 120 كيلو مترًا في الساعة، وحركة الرياح غربيّة بسرعة 18 كيلو مترًا، برطوبة بنسبة 20% بالمئة. أي يتجه دخان القطار؟',
      choice_1: Choice(data: 'الشرق', value: Random().nextInt(3)),
      choice_2: Choice(data: 'ليس إلى أي مكان.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'الجنوب', value: Random().nextInt(3)),
      choice_4: Choice(data: 'الغرب', value: Random().nextInt(3)),
    ),
    Questions(
      questionText:
          ' مزارع عنده 12 حصانًا، يبيعهم جميعًا إلا 3. كم حصانًا عنده؟',
      choice_1: Choice(data: '3', value: Random().nextInt(3)),
      choice_2: Choice(data: '12', value: Random().nextInt(3)),
      choice_3: Choice(data: '9', value: Random().nextInt(3)),
      choice_4: Choice(data: '5', value: Random().nextInt(3)),
    ),
    Questions(
      questionText:
          'وصف لك الطبيب 4 كبسولات دواء، كبسولة كل ساعة. تتناول آخر كبسولة بعد… ساعات',
      choice_1: Choice(data: '2', value: Random().nextInt(3)),
      choice_2: Choice(data: '4', value: Random().nextInt(3)),
      choice_3: Choice(data: '3', value: Random().nextInt(3)),
      choice_4: Choice(data: '5', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'ما هي أنتارتيكا؟',
      choice_1: Choice(data: 'دولة.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'عاصمة. ', value: Random().nextInt(3)),
      choice_3: Choice(data: 'قارة.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'ولاية.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'في أي جهة يدك اليسرى عندما تنظر إلى المرآة؟',
      choice_1: Choice(data: 'اليسار', value: Random().nextInt(3)),
      choice_2: Choice(data: 'الشمال', value: Random().nextInt(3)),
      choice_3: Choice(data: 'اليمين اليسار', value: Random().nextInt(3)),
      choice_4: Choice(data: 'اليسار', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'كيف تعمل البطاريات؟',
      choice_1: Choice(data: 'سحر.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'انعزال حراري.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'تفاعل كهروكيميائي.', value: Random().nextInt(3)),
      choice_4:
          Choice(data: 'تفاعل خافض للكهرباء.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText:
          'بنى 8 رجال جدارًا في 4 ساعات. في كم ساعة سيبني 4 رجال هذا الجدار؟',
      choice_1: Choice(data: '6 ساعات.', value: Random().nextInt(3)),
      choice_2: Choice(data: '8 ساعات.', value: Random().nextInt(3)),
      choice_3: Choice(data: '2 ساعة.', value: Random().nextInt(3)),
      choice_4: Choice(data: '0 ساعة.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText:
          'إذا كان معك عود ثقاب واحد، وجريدة، والقليل من الوقود، وخشبة، أيها تشعل أولًا؟',
      choice_1: Choice(data: 'الجريدة.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'عود الثقاب.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'الخشبة.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'الوقود.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'إذا رميت حجرًا في البحر الأحمر فإنه…',
      choice_1: Choice(data: 'يغرق.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'يطفو.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'يصبح رطبًا.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'يصبح لونه أحمرًا.', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'تخيل أنك في قارب يغرق وأن سمك القرش سيهاجمك، كيف تنجو؟',
      choice_1: Choice(data: 'أفكر بطريقة للنجاة', value: Random().nextInt(3)),
      choice_2: Choice(data: 'أستخدم طريقة غاوس', value: Random().nextInt(3)),
      choice_3: Choice(data: 'أتوقف عن الخيال', value: Random().nextInt(3)),
      choice_4: Choice(
          data: 'بمسك القرش و بقعد بتفاهم معه', value: Random().nextInt(3)),
    ),
    Questions(
      questionText: 'كم مرة يمكنك حذف 10 من 100؟',
      choice_1: Choice(data: 'مرتين', value: Random().nextInt(3)),
      choice_2: Choice(data: '10 مرات', value: Random().nextInt(3)),
      choice_3: Choice(data: 'مرة واحدة', value: Random().nextInt(3)),
      choice_4: Choice(data: '5 مرات', value: Random().nextInt(3)),
    ),
    Questions(
      questionText:
          'سنعطيك نتيجة وخيارًا لمشاركتها في نهاية الاختبار، هل ستشارك النتيجة لو كنت غبيًا؟',
      choice_1: Choice(data: 'نعم.', value: Random().nextInt(3)),
      choice_2: Choice(data: 'لا.', value: Random().nextInt(3)),
      choice_3: Choice(data: 'ممكن.', value: Random().nextInt(3)),
      choice_4: Choice(data: 'اكيد!', value: Random().nextInt(3)),
    ),
  ];

  void next() {
    if (_QuestionCount < (_questionBank.length - 1)) {
      _QuestionCount++;
    }
  }

  bool Check() {
    if (_QuestionCount == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void restart() {
    _QuestionCount = 0;
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
