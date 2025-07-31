import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 1;

  void rollDice() {
   setState(() {
    currentDiceImage = Random().nextInt(6) + 1;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Image.asset('assets/images/dice-$currentDiceImage.png',
            width: 200,
            ),
            const SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: rollDice, 
              child: const Text('Roll Dice'),

            )
          ],
        ),
    );
  }
}