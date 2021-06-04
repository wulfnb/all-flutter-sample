import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
// 23
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionSelected = 0;

  void answerQuestion(){
    setState(() {
      questionSelected = questionSelected + 1;
    });
    print(questionSelected);
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
              Text(questions.elementAt(questionSelected)),
              RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion,),
              RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion,),
              RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion,)
            ],
          ),
    ));
  }
}
