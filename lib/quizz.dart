import 'package:flutter/material.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/quizz_screen.dart';
import 'package:quizz_app/result_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<String> selectedAnswer = [];
  var currentScreen = "start_screen";

  void switchScreen() {
    setState(() {
      currentScreen = "quizz_screen";
    });
  }

  void answerQuestion(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        currentScreen = "result_screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (currentScreen == "quizz_screen") {
      screenWidget = QuizzScreen(onSelectedAnswer: answerQuestion);
    }

    if (currentScreen == "result_screen") {
      screenWidget = ResultScreen(
        chosenAnswer: selectedAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 2, 141),
        body: screenWidget,
      ),
    );
  }
}
