import 'package:flutter/material.dart';
import 'package:quize_app/main.dart';

class Question extends StatelessWidget {
  final questionText;

  const Question(this.questionText); 

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.black ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
