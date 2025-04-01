import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/answerbutton.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) addChosenAnswer;
  const QuestionsScreen(this.addChosenAnswer, {super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 1;

  void nextQuestion(String selectedAnswer) {
    setState(() {
      widget.addChosenAnswer(selectedAnswer);
      currentQuestionIndex += 1;

      if (currentQuestionIndex > questions.length) {
        currentQuestionIndex = 1;
      }
    });
  }

  @override
  Widget build(ctx) {
    QuizQuestion question = questions[currentQuestionIndex - 1];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 247, 247),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/plane_$currentQuestionIndex.jpg',
                    height: 250,
                    width: 400,
                  ),
                  Text(
                    'Choose the correct answer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.rubik().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            ...question.getShuffledAnswers().map((item) {
              return AnswerButton(
                answerText: item,
                onPressed: () {
                  nextQuestion(item);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
