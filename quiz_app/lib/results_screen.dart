import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/summary.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  const ResultsScreen({
    required this.chosenAnswers,
    required this.restartQuiz,
    super.key,
  });

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(ctx) {
    final int numberOfCorrectAnswers =
        getSummaryData().where((mp) {
          return mp['correct_answer'] == mp['user_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numberOfCorrectAnswers out of ${questions.length} questions correctly!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Summary(summaryData: getSummaryData()),
            SizedBox(height: 20),
            TextButton.icon(
              onPressed: restartQuiz,
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
