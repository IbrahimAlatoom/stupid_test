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
        title: Text('مرحبًا بك'),
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
            Container(
              width: 120,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/quiz', (s) => s == '/');
                },
                color: Colors.blue,
                child: Text('مستعد!!',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textDirection: TextDirection.rtl),
              ),
            )
          ],
        ),
      ),
    );
  }
}
