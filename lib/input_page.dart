import 'package:flutter/material.dart';

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
                    child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(10))),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(10)))),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(10))),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
