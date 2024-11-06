import 'dart:math';

import 'package:flutter/material.dart';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDice = 1;
  void rollDice() {
    setState(() {
      currentDice = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        'assets/dice-images/dice-$currentDice.png',
        height: 100,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(foregroundColor: Colors.brown),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
