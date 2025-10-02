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
  var currentQuestionIndex = 0;

  void answerQuestion () {
    setState(() {
      currentQuestionIndex++;
    });
  }
  //get questions => null;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ), //TextStyle
              textAlign: TextAlign.center,
            ), //Text
        
            const SizedBox(height: 30),
            ...currentQuestion.answers.map((item) {
              return AnswerButton(
                
                answerText: item,
                onTap: answerQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}