import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flavour_option.dart';
import 'info_card.dart';

const cardColor = Color(0xFF1D1E33);

const bottomContainerColor = Colors.redAccent;
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: InfoCard(
                      cardColor: cardColor,
                      child: FlavourOption(
                          icon: FontAwesomeIcons.cheese, text: 'MARGARITA'),
                    ),
                  ),
                  Expanded(
                    child: InfoCard(
                      cardColor: cardColor,
                      child: FlavourOption(
                          icon: FontAwesomeIcons.apple, text: 'FRUITY'),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: InfoCard(cardColor: cardColor, child: Container(),)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: InfoCard(cardColor: cardColor, child: Container())),
                  Expanded(child: InfoCard(cardColor: cardColor, child: Container()))
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
              child: TextButton(
                child: Text('CALCULATE', style: TextStyle(color: Colors.white, fontSize: 20),),
                onPressed: () {
                  print('Calculate price');
                },
              ),
            )
          ],
        ));
  }
}

