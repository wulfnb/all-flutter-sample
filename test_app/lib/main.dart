import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
// 23
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
    print(_questionSelected);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What is your name ?",
        "answers": ["A", "B", "C", "D"]
      },
      {
        "questionText": "What is your favourive colour ?",
        "answers": ["Red", "Green", "Blue"]
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My firstTest App"),
      ),
      body: Column(
        children: [
          Question(questions[_questionSelected]['questionText'].toString()),
          ...(questions[_questionSelected]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
