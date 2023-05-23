import 'package:flutter/material.dart';

void main() => runApp(PizzaCalculator());

class PizzaCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

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
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FBA');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
