import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String message;
  ResultPage({this.message});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('النتيجة'),
      ),
      body: Center(
        child:
            Text(widget.message, style: Theme.of(context).textTheme.display1),
      ),
    );
  }
}
