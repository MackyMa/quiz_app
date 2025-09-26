import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen (this.startQuiz,{super.key}); 

  final void Function() startQuiz;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset (
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ), //Image.asset
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ), //TextStyle
          ), //Text
          const SizedBox(
            height: 30
          ), //SizedBox
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_circle_right_outlined),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text('Start Quiz'),
          )
        ]
      ),
    );
  }
}

