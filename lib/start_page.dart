import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.all_inclusive),
        title: Text('QUize\'s App'),
      ),
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'مرحبًا بك في اختبار الغباء',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.grey[100],
                  fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            Text('هل انت مستعد لمعرفة كم انت غبي؟',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey[100],
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/quiz', (s) => s == '/');
              },
              color: Colors.black12,
              child: Text('مستعد!!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textDirection: TextDirection.rtl),
            )
          ],
        ),
      ),
    );
  }
}
