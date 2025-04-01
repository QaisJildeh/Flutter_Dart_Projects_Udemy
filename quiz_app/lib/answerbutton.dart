import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onPressed;

  const AnswerButton({
    required this.answerText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(ctx) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        alignment: Alignment.center, shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
