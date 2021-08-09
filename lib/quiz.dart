import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  var questions;
  var questionX;
  var newQuestion;

  Quiz({
    required this.questions,
    required this.questionX,
    required this.newQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionX]['question'] as String),
        ...(questions[questionX]['mcq'] as List<String>).map((choice) {
          return Answer(
            btnName: choice,
            handler: () =>
                newQuestion(choice == questions[questionX]['correct'] ? 1 : 0),
          );
        }).toList()
      ],
    );
  }
}
