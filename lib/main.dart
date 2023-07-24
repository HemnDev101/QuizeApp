import 'package:flutter/material.dart';
import 'package:quize_app/Screen/answer.dart';
import 'package:quize_app/Screen/question.dart';
import 'package:quize_app/Screen/quiz.dart';
import 'package:quize_app/Screen/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:   Colors.blue  ,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool isSwitched = false;

class _MyHomePageState extends State<MyHomePage> {
  int _totalScore = 0;
  int questionIndex = 0;
  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your faivarote color?',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'white', 'score': 20},
        {'text': 'yellow', 'score': 30},
        {'text': 'pink', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your faivarote animal?',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Bird', 'score': 30},
        {'text': 'CocoDiols', 'score': 40}
      ]
    }
  ];

  void answerQuestion(int score) {
    print("answerQuestion");
    _totalScore += score;
    print(_totalScore);
    setState(() {
      questionIndex += 1;

      ///print(questionIndex);

      /*if (questionIndex == 2) {
        questionIndex = 0;
      }
      */
    });
  }

  void resetApp() {
    setState(() {
      _totalScore = 0;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: isSwitched ? Colors.black :Colors.blue,
        title: Text("Quiz App" , style: TextStyle(color: isSwitched ? Colors.amber :Colors.white),),
        actions: [
          Switch(
              value: isSwitched,
              onChanged: ((value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched); 
                });
              }))
        ],
      ),
      body: Container(
          color: isSwitched ? Colors.amber :Colors.white , 
        child: _question.length > questionIndex
            ? Quiz(_question, questionIndex, answerQuestion)
            : Result(resetApp, _totalScore),
      ),
    );
  }
}
