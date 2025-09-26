import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
//import 'package:quiz_app/data/questions.dart';
//import 'package:quiz_app/models/quiz_question.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen ({super.key}); 

  @override
  State<QuestionsScreen> createState(){
    return QuestionsScreenState();
  }
}

class QuestionsScreenState extends State<QuestionsScreen> {
  //get questions => null;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ), //TextStyle
          ), //Text

          const SizedBox(height: 30),
          ...currentQuestion.answers.map((item) {
            return AnswerButton(
              answerText: item,
              onTap: () {},
            );
          }),
        ],
      ),
    );
  }
}