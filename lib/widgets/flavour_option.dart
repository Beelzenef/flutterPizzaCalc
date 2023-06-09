import 'package:flutter/material.dart';
import '../constants.dart';

class FlavourOption extends StatelessWidget {
  const FlavourOption({required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(icon, style: TextStyle(fontSize: 70)),
        SizedBox(height: 15),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
