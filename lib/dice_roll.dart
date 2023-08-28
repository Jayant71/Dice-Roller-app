import 'dart:math';
import 'package:flutter/material.dart';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceroll = 1;

  void rollDice() {
    setState(() {
      diceroll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-six-faces-$diceroll.png', width: 200),
        TextButton(
            onPressed: rollDice,
            // style: TextButton.styleFrom(
            //     foregroundColor: Colors.white,
            //     textStyle: const TextStyle(fontSize: 25)),
            child: const Text("Roll Dice", style: TextStyle(fontSize: 25,color: Colors.white,)),),
      ],
    );
  }
}
