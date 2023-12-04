import 'package:flutter/material.dart';
import 'package:quizz_app/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Homepages(
          Color.fromARGB(255, 250, 248, 248),
        ),
      ),
    );
  }
}
