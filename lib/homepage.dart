import 'package:flutter/material.dart';

class Homepages extends StatelessWidget {
  const Homepages(this.colors, {super.key});
  final Color colors;

  @override
  Widget build(BuildContext context) {
    var onPressed;
    return Container(
      decoration: BoxDecoration(
        color: colors,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quizz_title.png",
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
              child: const Text(
                "Mulai Quizz",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
