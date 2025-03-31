import 'package:flutter/material.dart';

import 'package:quiz_app/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(ctx) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 247, 247, 247),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/images/plane_1.jpg',
              height: 300,
              width: 400,
            ),
          ),
        ],
      ),
    );
  }
}
