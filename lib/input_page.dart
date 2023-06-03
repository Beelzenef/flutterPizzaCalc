import 'package:flutter/material.dart';
import 'widgets/flavour_option.dart';
import 'widgets/info_card.dart';
import '../constants.dart';

enum Flavours { Margarita, Pineapple }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Flavours flavourSelected;
  int sizeSelected = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pizza calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          ? kCardColor
                          : kInactiveCardColor,
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
                          ? kCardColor
                          : kInactiveCardColor,
                      child: FlavourOption(icon: '🍍', text: 'PINEAPPLE'),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: InfoCard(
                    cardColor: kCardColor,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SIZE',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                sizeSelected.toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                'cm',
                                style: kLabelTextStyle,
                              )
                            ],
                          ),
                          Slider(
                              value: sizeSelected.toDouble(),
                              min: kMinSize,
                              max: kMaxSize,
                              activeColor: kBottomContainerColor,
                              inactiveColor: Colors.white,
                              onChanged: (double newV) {
                                setState(() {
                                  sizeSelected = newV.round();
                                });
                              })
                        ]))),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child:
                          InfoCard(cardColor: kCardColor, child: Container())),
                  Expanded(
                      child:
                          InfoCard(cardColor: kCardColor, child: Container()))
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
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
