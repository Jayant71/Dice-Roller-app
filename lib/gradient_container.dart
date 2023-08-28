import "package:first_app/dice_roll.dart";
import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.amber, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: const Center(child: DiceRoller()));
  }
}
