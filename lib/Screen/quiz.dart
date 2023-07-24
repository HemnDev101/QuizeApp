import 'package:flutter/material.dart';
import 'package:quize_app/Screen/answer.dart';
import 'package:quize_app/Screen/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final  Function answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //peshandany title prsyaraka 
        Question( question[questionIndex]['questionText'].toString()),
        //peshandany wallamakan
        ...( question[questionIndex]['answer'] as List<Map<String , Object>>).map((answer) {
          return Answer( () =>answerQuestion(int.parse(answer['score'].toString()))  , answer['text'].toString());
        }),
      ],
    );
  }
}
