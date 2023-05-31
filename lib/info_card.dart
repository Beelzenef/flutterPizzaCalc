import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    @required this.cardColor,
    @required this.child
  });

  final Widget child;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(10)));
  }
}
