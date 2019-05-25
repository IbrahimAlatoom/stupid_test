import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

import 'consts.dart';
import 'quizAccount.dart';

class QuizPage extends StatefulWidget {
  final Function notifyMainApp;

  QuizPage({this.notifyMainApp});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  QuizAccount quizbank = QuizAccount();

  @override
  void initState() {
    try {
      FirebaseAdMob.instance
          .initialize(appId: 'ca-app-pub-9769401692194876~7521325935')
          .then((response) {
        myBanner
          ..load()
          ..show(anchorOffset: 0, anchorType: AnchorType.bottom);
      });
    } catch (e) {
      print(e);
    }

    super.initState();
  }

  Widget build(BuildContext context) {
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
          textDirection: TextDirection.rtl,
        ),
        onPressed: () {
          setState(() {
            quizbank.next(context);
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
  childDirected: false,
  testDevices: <String>[],
);

BannerAd myBanner = BannerAd(
  adUnitId: 'ca-app-pub-9769401692194876/4703590906',
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);
