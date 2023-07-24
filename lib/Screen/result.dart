import 'package:flutter/material.dart';
import 'package:quize_app/main.dart';

class Result extends StatelessWidget {
  final resFunc;
  final int _totalScore;
  Result(this.resFunc, this._totalScore);

  String get textPhrase {
    if (_totalScore >=80)return "Excelent" ; 
    else if (_totalScore >=70)return "very good" ; 
         else if (_totalScore >=60)return "good" ; 
     else{
      return "bad" ; 
     }
     
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(7),
         
          decoration: BoxDecoration(
             color: isSwitched == true ? Colors.amber : Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Text(
             textPhrase,
            style: TextStyle(fontSize: 45 ,  color: isSwitched == true ? Colors.black : Colors.white,),
          ),
        ),
        ElevatedButton(

          style: ElevatedButton.styleFrom(
              backgroundColor:  isSwitched ? Colors.black :Colors.blue
          ),
            onPressed: () {
              resFunc();
            },
            child: Text(
              "Try Again",
              style: TextStyle(fontSize: 30 , color:  isSwitched ? Colors.amber :Colors.white),
            ))
      ],
    ));
  }
}
