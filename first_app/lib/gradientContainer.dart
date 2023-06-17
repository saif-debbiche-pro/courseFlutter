import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styledText.dart';

class GradientContainer extends StatelessWidget {
const GradientContainer(this.colorStart, this.colorEnd, {super.key});

  // we can add more constructors just like that
  GradientContainer.atherConstructor({super.key})
      : colorStart = Color.fromARGB(255, 52, 52, 255),
        colorEnd = Color.fromARGB(255, 52, 180, 255);
  // this is something related with dart the language we use and we call that constructor like that
  // GradientContainer.atherConstructor();
  final Color colorStart;
  final Color colorEnd;
  



  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [colorStart, colorEnd],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
          child: DiceRoller()
    )
    );
  }
}
