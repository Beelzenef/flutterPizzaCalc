import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {@required this.cardColor, @required this.child, this.behaviour});

  final Widget child;
  final Color cardColor;
  final Function behaviour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: behaviour,
      child: Container(
          child: child,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(10))),
    );
  }
}
