import 'package:flutter/material.dart';
import 'package:quizz_app/gradient_container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 0, 0, 0),
          ],
        ),
      ),
    );
  }
}
