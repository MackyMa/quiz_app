import 'dart:math';

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key
    required this.answerText,
    required this.onTap,
    });

    final String answerText; 
    final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(),
        BackgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        Padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
      child: Text(answerText),
      );
  }
}