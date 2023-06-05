import 'package:flutter/material.dart';
import 'package:pizza_calculator/widgets/circle_icon_button.dart';
import '../widgets/flavour_option.dart';
import '../widgets/info_card.dart';
import '../../constants.dart';

enum Flavours { Margarita, Pineapple }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Flavours flavourSelected;
  int sizeSelected = 30;
  int sodasSelected = 0;
  int peopleToShareSelected = 1;

  int maxSodas = 10;
  int minSodas = 0;

  int minPeopleToShare = 1;
  int maxPeopleToShare = 6;

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
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                inactiveTrackColor: Color(0xFF8D8E98),
                                activeTrackColor: Colors.white,
                                thumbColor: kBottomContainerColor,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15),
                                overlayShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 20)),
                            child: Slider(
                                value: sizeSelected.toDouble(),
                                min: kMinSize,
                                max: kMaxSize,
                                onChanged: (double newV) {
                                  setState(() {
                                    sizeSelected = newV.round();
                                  });
                                }),
                          )
                        ]))),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InfoCard(
                          cardColor: kCardColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'SODAS',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                sodasSelected.toString(),
                                style: kNumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleIconButton(
                                    behaviour: () {
                                      setState(() {
                                        if (sodasSelected > minSodas) {
                                          sodasSelected--;
                                        }
                                      });
                                    },
                                    icon: Icons.arrow_circle_down,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleIconButton(
                                    behaviour: () {
                                      setState(() {
                                        if (sodasSelected < maxSodas) {
                                          sodasSelected++;
                                        }
                                      });
                                    },
                                    icon: Icons.arrow_circle_up,
                                  )
                                ],
                              )
                            ],
                          ))),
                  Expanded(
                      child: InfoCard(
                          cardColor: kCardColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'PEOPLE SHARING',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                peopleToShareSelected.toString(),
                                style: kNumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleIconButton(
                                    behaviour: () {
                                      setState(() {
                                        if (peopleToShareSelected >
                                            minPeopleToShare) {
                                          peopleToShareSelected--;
                                        }
                                      });
                                    },
                                    icon: Icons.arrow_circle_down,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleIconButton(
                                    behaviour: () {
                                      setState(() {
                                        if (peopleToShareSelected <
                                            maxPeopleToShare) {
                                          peopleToShareSelected++;
                                        }
                                      });
                                    },
                                    icon: Icons.arrow_circle_up,
                                  )
                                ],
                              )
                            ],
                          )))
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
