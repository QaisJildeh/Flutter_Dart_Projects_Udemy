import 'package:flutter/material.dart';

import 'package:roll_dice_app/dice.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: RollDice()),
      theme: ThemeData.light(useMaterial3: false),
      debugShowCheckedModeBanner: false,
    ),
  );
}
