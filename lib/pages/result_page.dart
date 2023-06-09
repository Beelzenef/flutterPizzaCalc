import 'package:flutter/material.dart';
import 'package:pizza_calculator/widgets/info_card.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.finalPrice,
  });

  final String finalPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share your pizza'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: InfoCard(
              cardColor: kCardColor,
              behaviour: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Each person has to pay:'),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        finalPrice.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        '€',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('The price depends on the pizza flavour selected'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Pineapple flavour is more expensive than margharita'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
