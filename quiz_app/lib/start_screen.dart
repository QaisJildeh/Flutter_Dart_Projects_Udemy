import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() stateFunction;
  const StartScreen({required this.stateFunction,super.key});

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
              height: 220,
              width: 220,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Planes Quiz App!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          const Text('Test your knowledge about planes and aviation!'),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: stateFunction,
            label: Text('Start Quiz!', style: TextStyle(color: Colors.black)),
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
