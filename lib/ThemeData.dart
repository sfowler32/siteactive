import 'package:flutter/material.dart';

ThemeData loginPageTheme() {
  return ThemeData(
    primaryColor: Color(0xFF494d4d),
    scaffoldBackgroundColor: Color(0xFF494d4d),
    accentColor: Colors.white,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.white),
    ),
  );
}

ThemeData lightTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    accentColor: Colors.black,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.black),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    accentColor: Colors.white,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.white),
    ),
  );
}
