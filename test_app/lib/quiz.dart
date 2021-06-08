import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quizIndex;
  final Function selectHandler;

  Quiz(this.questions, this.quizIndex, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[quizIndex]['questionText'].toString()),
        ...(questions[quizIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() =>selectHandler(answer['score']), answer['text'].toString());
        }).toList()
      ],
    );
  }
}
