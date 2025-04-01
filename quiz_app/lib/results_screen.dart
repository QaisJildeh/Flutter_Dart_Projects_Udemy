import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> chosenAnswers;

  const ResultsScreen({required this.chosenAnswers, super.key});

  @override
  Widget build(ctx) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('You answered X out of Y questions correctly!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            Text('456'),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              icon: Icon(
                Icons.restart_alt_rounded,
                color: Colors.black,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
