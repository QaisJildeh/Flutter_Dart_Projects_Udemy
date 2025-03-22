import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color fontColor;

  const StyledText({required this.text, required this.fontSize, required this.fontColor, super.key});

  @override
  Widget build(ctx) {
    return Text(text, style: TextStyle(fontSize: fontSize));
  }
}
