import 'package:flutter/material.dart';
import 'package:pizza_calculator/constants.dart';

class CircleIconButton extends StatelessWidget {
  CircleIconButton({required this.icon, required this.behaviour});

  final IconData icon;
  final void Function() behaviour;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: behaviour,
      disabledElevation: 6,
      fillColor: kInactiveCardColor,
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
    );
  }
}
