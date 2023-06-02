import 'package:flutter/material.dart';
import 'widgets/flavour_option.dart';
import 'widgets/info_card.dart';

const cardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

const bottomContainerColor = Colors.redAccent;
const bottomContainerHeight = 80.0;

enum Flavours { Margarita, Pineapple }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Flavours flavourSelected;

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
                      behaviour: () {
                        setState(() {
                          flavourSelected = Flavours.Margarita;
                        });
                      },
                      cardColor: flavourSelected == Flavours.Margarita
                          ? cardColor
                          : inactiveCardColor,
                      child: FlavourOption(icon: '🧀', text: 'MARGARITA'),
                    ),
                  ),
                  Expanded(
                    child: InfoCard(
                      behaviour: () {
                        setState(() {
                          flavourSelected = Flavours.Pineapple;
                        });
                      },
                      cardColor: flavourSelected == Flavours.Pineapple
                          ? cardColor
                          : inactiveCardColor,
                      child: FlavourOption(icon: '🍍', text: 'PINEAPPLE'),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: InfoCard(
              cardColor: cardColor,
              child: Container(),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child:
                          InfoCard(cardColor: cardColor, child: Container())),
                  Expanded(
                      child: InfoCard(cardColor: cardColor, child: Container()))
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
              child: TextButton(
                child: Text(
                  'CALCULATE PRICE',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  print('Calculate price');
                },
              ),
            )
          ],
        ));
  }
}
