import "package:flutter/material.dart";
import "package:flutter_tutorial/dice_roller.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({
    super.key,
    required this.gradientColors,
  });

  GradientContainer.purple({super.key})
      : gradientColors = [
          const Color.fromARGB(255, 61, 118, 198),
          const Color.fromARGB(255, 146, 51, 86),
        ];

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
