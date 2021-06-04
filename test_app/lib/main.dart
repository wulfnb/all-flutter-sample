import 'package:flutter/material.dart';


import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
// next 42
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionSelected = 0;

  void _answerQuestion() {
    setState(() {
      _questionSelected = _questionSelected + 1;
    });
  }

  final _questions = const [
    {
      "questionText": "Your name start with ?",
      "answers": ["A", "B", "C", "D", "Other"]
    },
    {
      "questionText": "What is your favourive colour ?",
      "answers": ["Red", "Green", "Blue"]
    },
    {
      "questionText": "You are from ?",
      "answers": ["City", "Town", "Village"]
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
          ? Quiz(quizIndex: _questionSelected, questions: _questions, selectHandler: _answerQuestion)
          : Result(),
    ));
  }
}
