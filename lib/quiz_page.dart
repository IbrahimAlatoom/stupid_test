import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'consts.dart';
import 'quizAccount.dart';
import 'result_page.dart';

class QuizPage extends StatefulWidget {
  Function notifyMainApp;

  QuizPage({this.notifyMainApp});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  QuizAccount quizbank = QuizAccount();
  void check() {
    if (quizbank.Check()) {
      Alert(
        context: context,
        title: '!مبروك',
        type: AlertType.success,
        desc: 'لقد أنهيت التحدي',
        buttons: [
          DialogButton(
            child: Text(
              "النتيجة",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context).pop(); //to close the current alert
              // open the final result
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(
                  //TODO: Type here the final result for user
                  message: 'ضع هنا الرسالة النهائية',
                );
              }));
            },
            width: 120,
          )
        ],
      ).show();
    }
  }

  Widget build(BuildContext context) {
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-9769401692194876/4703590906')
        .then((response) {
      myBanner
        ..load()
        ..show(anchorOffset: 0, anchorType: AnchorType.bottom);
    });

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                quizbank.restart();
              });
            },
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                currentTheme = currentTheme == ThemeType.Light
                    ? ThemeType.Dark
                    : ThemeType.Light;
                widget.notifyMainApp();
              });
            },
            icon: Icon(
              Icons.lightbulb_outline,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          'اختبار الغباء',
          style: Theme.of(context).textTheme.display2,
        ),
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
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: <Widget>[
                  choiceButton(quizbank.getQuestionAns1()),
                  choiceButton(quizbank.getQuestionAns2()),
                  choiceButton(quizbank.getQuestionAns3()),
                  choiceButton(quizbank.getQuestionAns4()),
                ],
              ),
            ),
          ),
          Container(
            //TODO::Put here an ads from google ads
            width: double.infinity,
            height: 50,
            color: Colors.grey[200],
            child: Center(
              child: Text('مساحة إعلانية'),
            ),
          )
        ],
      ),
    );
  }

  Container choiceButton(String text) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 40,
      child: FlatButton(
        color: Theme.of(context).primaryColor,
        child: Text(
          text,
          style: Theme.of(context).textTheme.display2,
        ),
        onPressed: () {
          setState(() {
            check();
            quizbank.next();
          });
        },
      ),
    );
  }
}

//ads
MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['flutterio', 'beautiful apps'],
  contentUrl: 'https://flutter.io',
  birthday: DateTime.now(),
  childDirected: false,
  designedForFamilies: false,
  gender:
      MobileAdGender.male, // or MobileAdGender.female, MobileAdGender.unknown
  testDevices: <String>[], // Android emulators are considered test devices
);

BannerAd myBanner = BannerAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: BannerAd.testAdUnitId,
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);
