import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resutlScore;
  final Function resetHandler;

  Result(this.resutlScore, this.resetHandler);

  String get restultPhase {
    var restultText = 'Test complete' + resutlScore.toString();
    if (resutlScore < 8) {
      restultText = 'Score is less than 8';
    }
    return restultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          restultPhase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(child: Text('Restart Test'), onPressed: () => {resetHandler()}, textColor: Colors.blue,)
      ],
    ));
  }
}
