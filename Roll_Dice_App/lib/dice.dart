import 'package:flutter/material.dart';
import 'dart:math';

import 'styledtext.dart';
import 'package:roll_dice_app/gradientcontainer.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDice();
  }
}

class _RollDice extends State<RollDice> {
  String image = 'assets/images/img_${Random().nextInt(6) + 1}.png';

  void roll(){
    setState(() {
      image = 'assets/images/img_${Random().nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(ctx) {
    return GradientContainer(
      colors: [
        Color.fromARGB(255, 200, 137, 234),
        Color.fromARGB(255, 255, 255, 255),
      ],
      startAlignment: Alignment.topLeft,
      endAlignment: Alignment.bottomRight,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, width: 250, height: 250),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: roll,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: StyledText(
                text: 'ROLL!',
                fontSize: 18,
                fontColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
