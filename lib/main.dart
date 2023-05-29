import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(PizzaCalculator());

class PizzaCalculator extends StatelessWidget {
  var backgroundColor = Color(0xFF090C22);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: backgroundColor,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: backgroundColor
        )
      ),
      home: InputPage(),
    );
  }
}

