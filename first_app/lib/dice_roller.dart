import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }


  
}
// _ mean that class will be used just in this file even when we import this file to other file ,the other file can not use this class
class _DiceRollerState extends State<DiceRoller>{

  var activeDiceImage='assets/images/dice-images/dice-2.png';

  void rollDice() {
    var diceRoll=Random().nextInt(6)+1;
    setState((){
        activeDiceImage='assets/images/dice-images/dice-$diceRoll.png';
    });
    

    
  }


@override
Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage, width: 200),
            SizedBox(height: 20),//container and most other widget take the space they need to feet there content into themseves
            // SizedBox however takes the size that we defined explicitly even the content want more it will cut it of
            TextButton(
              style:TextButton.styleFrom(
                // padding:EdgeInsets.only(top:20),//or we can add a SizedBox between this button and the image ,witch i did above
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
              // onPressed: () {},//option 1
              onPressed: rollDice,//option 2
              child: const Text("Roll Dice")
               )
          ],
      );
  }
}