import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Text(
            'sadasd',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
          Text('asdasd',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            onPressed: () {},
            color: Colors.blue,
            child: Text('asdasd',
                style: TextStyle(
                  color: Colors.blue,
                ),
                textDirection: TextDirection.rtl),
          )
        ],
      ),
    );
  }
}
