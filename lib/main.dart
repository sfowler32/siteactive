import 'package:flutter/material.dart';
import 'package:siteactive/LoginPage.dart';
import 'package:siteactive/ThemeData.dart';

void main() {
  runApp(SiteActive());
}

class SiteActive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: loginPageTheme(),
      home: LoginPage(),
    );
  }
}
