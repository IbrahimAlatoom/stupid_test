import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'consts.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  //TODO::COMPLETE ALL INFORMATION ABOUT LEMON LAB AND PRIVACY POLICE.

  void _privacyPolicyDialog( String title, String body, String buttonText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: SingleChildScrollView(child: new Text(body)),
          actions: <Widget>[
            new FlatButton(
              child: new Text(buttonText),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حول مختبر الليمون'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.lightBlue,
              child: Text("من نحن", style: flatButtonTextStyle),
              onPressed: () {setState(() {
                _privacyPolicyDialog("عن مختبر الليمون", aboutLemonLabAr, "حسنًا");
              });},
            ),
            FlatButton(
              color: Colors.lightBlue,
              child: Text("سياسة الخصوصيّة", style: flatButtonTextStyle),
              onPressed: () {setState(() {
                _privacyPolicyDialog("Privacy Policy", privacyPolicyEnglish, "Okay");
              });},
            ),
            FlatButton(
              color: Colors.lightBlue,
              child: Text("المزيد من التطبيقات", style: flatButtonTextStyle),
              onPressed: (){
                _launchURL('https://play.google.com/store/apps/developer?id=Lemon+Lab');
              },
            ),
          ],
        ),
      ),
    );
  }
}
