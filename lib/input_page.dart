import 'package:flutter/material.dart';
import 'info_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var cardColor = Color(0xFF1D1E33);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pizza calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InfoCard(cardColor: cardColor),
                  ),
                  Expanded(
                    child: InfoCard(cardColor: cardColor),
                  )
                ],
              ),
            ),
            Expanded(child: InfoCard(cardColor: cardColor)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: InfoCard(cardColor: cardColor)),
                  Expanded(child: InfoCard(cardColor: cardColor))
                ],
              ),
            ),
          ],
        ));
  }
}

