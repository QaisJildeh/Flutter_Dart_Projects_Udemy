import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: Center(child: Text('test'))),
      theme: ThemeData.light(useMaterial3: true),
    ),
  );
}
