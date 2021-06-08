import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionSelected = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionSelected = _questionSelected + 1;
    });
  }
  void _resetQuiz() {
    setState(() {
      _questionSelected = 0;
    _totalScore = 0;
    });
  }

  final _questions = const [
    {
      "questionText": "Your name start with ?",
      "answers": [
        {"text": "A", "score": 4},
        {"text": "B", "score": 5},
        {"text": "C", "score": 3},
        {"text": "D", "score": 2},
        {"text": "Other", "score": 0}
      ]
    },
    {
      "questionText": "What is your favourive colour ?",
      "answers": [
        {"text": "Red", "score": 3},
        {"text": "Green", "score": 1},
        {"text": "Blue", "score": 2}
      ]
    },
    {
      "questionText": "You are from ?",
      "answers": [
        {"text": "City", "score": 1},
        {"text": "Town", "score": 2},
        {"text": "Village", "score": 3}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My firstTest App"),
      ),
      body: _questionSelected < _questions.length
          ? Quiz(_questions, _questionSelected, _answerQuestion)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
