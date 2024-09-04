import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_tutorial/style_text.dart";

var random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var diceState = 1;

  void rollDice() {
    setState(() {
      diceState = random.nextInt(6) + 1;
      print("Rolling dice");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return RotationTransition(
              turns: Tween<double>(begin: 0, end: 1).animate(animation),
              child: child,
            );
          },
          child: Image.asset(
            "assets/images/dice-$diceState.png",
            key: UniqueKey(),
            width: 200,
            height: 200,
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          onPressed: rollDice,
          child: const StyleText("Roll Dice"),
        )
      ],
    );
  }
}
