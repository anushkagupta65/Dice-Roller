import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentdiceRoll = 2;

  void rollDice() {
    setState(() {
      currentdiceRoll = randomizer.nextInt(6) + 1;
      // Random().nextInt will produce numbers from 0 to 5; so, to get desired output (1 to 6) 1 is added
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
          width: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
