import 'dart:math';

import 'package:dicee/widgets/Dice.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  DicePageState() {
    this.generateBothDiceNumbers();
  }
  void generateBothDiceNumbers() {
    this.leftDiceNumber = Random().nextInt(6) + 1;
    this.rightDiceNumber = Random().nextInt(6) + 1;
  }

  void rollBothDices() {
    setState(this.generateBothDiceNumbers);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Dice(
              leftDiceNumber,
              rollDice: this.rollBothDices,
            ),
          ),
          Expanded(
            child: Dice(
              rightDiceNumber,
              rollDice: this.rollBothDices,
            ),
          )
        ],
      ),
    );
  }
}
