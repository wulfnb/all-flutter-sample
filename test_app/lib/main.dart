import 'package:flutter/material.dart';


import './question.dart';
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

  void _answerQuestion(){
    setState(() {
      _questionSelected = _questionSelected + 1;
    });
    print(_questionSelected);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your name ?",
      "What is your favourive colour ?"
    ];
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("My firstTest App"),
          ),
          body: Column(
            children: [
              Question(questions.elementAt(_questionSelected)),
              RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion,),
              RaisedButton(child: Text("Answer 2"), onPressed: _answerQuestion,),
              RaisedButton(child: Text("Answer 3"), onPressed: _answerQuestion,)
            ],
          ),
    ));
  }
}
