import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    fontFamily: 'Lalezar',
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(color: Colors.blue),
    textTheme: TextTheme(
        display1: TextStyle(color: Colors.blue, fontSize: 24),
        display2: TextStyle(color: Colors.white, fontSize: 24)));

ThemeData darkTheme = ThemeData(
    fontFamily: 'Lalezar',
    primaryColor: Colors.grey.shade700,
    appBarTheme: AppBarTheme(color: Colors.grey.shade900),
    scaffoldBackgroundColor: Colors.grey.shade900,
    textTheme: TextTheme(
        display1: TextStyle(color: Colors.white, fontSize: 24),
        display2: TextStyle(color: Colors.white, fontSize: 24)));
