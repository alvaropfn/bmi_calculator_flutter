import 'package:flutter/material.dart';

import 'screens/input_page.dart';

import './constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: kColorBG,
          accentColor: Colors.purple,
          scaffoldBackgroundColor: kColorBG,
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}
