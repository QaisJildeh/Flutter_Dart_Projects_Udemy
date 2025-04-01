import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() stateFunction;
  const StartScreen({required this.stateFunction, super.key});

  @override
  Widget build(ctx) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 247, 247, 247),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/images/logo.png',
              height: 280,
              width: 280,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Planes Quiz App!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 3),
          const Text(
            'Test your knowledge about planes and aviation!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: stateFunction,
            label: Text(
              'Start Quiz!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            icon: Icon(Icons.flight_takeoff_sharp),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 247, 247, 247),
              iconColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
