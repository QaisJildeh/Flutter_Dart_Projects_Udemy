import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  final Alignment startAlignment;
  final Alignment endAlignment;
  final Widget child;

  const GradientContainer({
    required this.startAlignment,
    required this.endAlignment,
    required this.child,
    super.key,
    this.colors = const [
      Color.fromARGB(255, 13, 34, 61),
      Color.fromARGB(255, 50, 80, 120),
    ],
  });

  @override
  Widget build(ctx) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: child,
    );
  }
}
