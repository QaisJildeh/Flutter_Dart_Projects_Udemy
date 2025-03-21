import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  RollDice({super.key}){
    
  }

  @override
  State<RollDice> createState() {
    return _RollDice();
  }
}

class _RollDice extends State<RollDice> {

  @override
  Widget build(ctx) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 13, 34, 61),
            Color.fromARGB(255, 50, 80, 120), 
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          'test',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    );
  }
}
