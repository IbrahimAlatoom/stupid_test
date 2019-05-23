import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'consts.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  void _privacyPolicyDialog(String title, String body, String buttonText) {
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
            Text(
              aboutLemonLabAr,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text("سياسة الخصوصيّة",
                  style: Theme.of(context).textTheme.display2),
              onPressed: () {
                setState(() {
                  _privacyPolicyDialog(
                      "Privacy Policy", privacyPolicyEnglish, "Okay");
                });
              },
            ),
            FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text("المزيد من التطبيقات",
                  style: Theme.of(context).textTheme.display2),
              onPressed: () {
                _launchURL(
                    'https://play.google.com/store/apps/developer?id=Lemon+Lab');
              },
            ),
          ],
        ),
      ),
    );
  }
}
