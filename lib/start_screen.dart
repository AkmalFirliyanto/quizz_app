import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuizz, {super.key});

  final void Function() startQuizz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quizz_title.png",
            color: const Color.fromARGB(155, 255, 255, 255),
            width: 250,
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: startQuizz,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                width: 2,
                color: Colors.white,
              ),
            ),
            child: const Text(
              "Mulai Quizz",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
