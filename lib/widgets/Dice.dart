import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  final Function() rollDice;
  final int number;

  Dice(this.number, {this.rollDice});

  @override
  DiceState createState() => DiceState();
}

class DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.rollDice,
      child: Image.asset(
        'images/dice' + (widget.number.toString()) + '.png',
      ),
    );
  }
}
