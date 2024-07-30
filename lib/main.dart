import 'package:flutter/material.dart';
import 'package:dice_roller/gradiant_constructor.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 29, 1, 77),
          Color.fromARGB(255, 96, 6, 181),
        ),
      ),
    ),
  );
}
