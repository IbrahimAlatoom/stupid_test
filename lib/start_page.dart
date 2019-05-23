import 'package:flutter/material.dart';

import 'consts.dart';
//TODO : create a page for results and link it with alert button .

class StartPage extends StatefulWidget {
  final Function notifyParent;
  StartPage({this.notifyParent});

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  void notifiyParent() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مرحبًا بك'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                currentTheme = currentTheme == ThemeType.Light
                    ? ThemeType.Dark
                    : ThemeType.Light;
                widget.notifyParent();
              });
            },
            icon: Icon(
              Icons.lightbulb_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'مرحبًا بك في اختبار الغباء',
              style:
                  Theme.of(context).textTheme.display1.copyWith(fontSize: 32),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            Text('هل انت مستعد لمعرفة كم انت غبي؟',
                style:
                    Theme.of(context).textTheme.display1.copyWith(fontSize: 28),
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
                color: Theme.of(context).primaryColor,
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
