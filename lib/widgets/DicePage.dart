import 'package:dicee/widgets/Dice.dart';
import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Dice(1),
          ),
          Expanded(
            child: Dice(6),
          )
        ],
      ),
    );
  }
}
