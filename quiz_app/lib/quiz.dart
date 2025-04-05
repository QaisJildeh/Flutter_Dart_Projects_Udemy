import 'package:flutter/material.dart';

import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen =
      'start-screen'; //* This is the second way to initialize the screen

  // * This is the first way to initialize the screen
  // @override
  // void initState() {
  //   activeScreen = StartScreen(stateFunction: switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  final List<String> chosenAnswers = [];
  void addAnswers(String answer){
    chosenAnswers.add(answer);

    if(chosenAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      activeScreen = 'start-screen';
      chosenAnswers.clear();
    });
  }

  @override
  Widget build(ctx) {
    // * This is the third way to initialize the screen
    Widget screenWidget = StartScreen(stateFunction: switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(addAnswers);
    }
    else if(activeScreen == 'result-screen'){
      screenWidget = ResultsScreen(chosenAnswers: chosenAnswers, restartQuiz: restartQuiz,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 30, 72, 107),
                Color.fromARGB(255, 79, 142, 194),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
          // * This is the second way to initialize the screen
          // activeScreen == 'start-screen'
          //     ? StartScreen(stateFunction: switchScreen)
          //     : const QuestionsScreen(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
