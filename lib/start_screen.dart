import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 78, 13, 150),
            Color.fromARGB(255, 23, 18, 95),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Learn Flutter Funny!',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white54),
              onPressed: () {
                startQuiz();
              },
              icon: const Icon(Icons.arrow_right_sharp),
              label: const Text(
                'Start Quize',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
