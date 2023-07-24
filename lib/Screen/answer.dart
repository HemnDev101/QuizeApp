import 'package:flutter/material.dart';
import 'package:quize_app/main.dart';

class Answer extends StatelessWidget {
  String answerText;
  Function() x; 

  Answer( this.x ,  this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: [
        ElevatedButton(
          
            style: ElevatedButton.styleFrom(
              backgroundColor:  isSwitched ? Colors.black :Colors.blue  ,
              minimumSize: const Size.fromHeight(10), // NEW
            ),
            onPressed: x,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                answerText,
                style: TextStyle(fontSize: 25 , color:    isSwitched ? Colors.amber :Colors.white),
              ),
            )),
      ]),
    );
  }
}
