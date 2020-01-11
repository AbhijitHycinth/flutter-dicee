import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  int diceNumber;

  Dice(this.diceNumber);

  @override
  DiceState createState() => DiceState(diceNumber: this.diceNumber);
}

class DiceState extends State<Dice> {
  int diceNumber;

  DiceState({this.diceNumber});

  void onPressed() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onPressed,
      child: Image.asset(
        'images/dice$diceNumber.png',
      ),
    );
  }
}
