import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int count;
  final Function answerQuestions;
  Quiz(
      {@required this.questions,
      @required this.answerQuestions,
      @required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[count]['questionText']),
        ...(questions[count]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
