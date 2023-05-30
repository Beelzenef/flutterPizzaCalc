import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    @required this.cardColor,
  });

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(10)));
  }
}
