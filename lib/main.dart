import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'what is the number of days of a week?',
      'mcq': ['Five', 'Eight', 'Seven'],
      'correct': 'Seven',
    },
    {
      'question': 'What is the color of the sky?',
      'mcq': ['Green', 'White', 'Blue', 'Black'],
      'correct': 'Blue',
    },
    {
      'question': 'Sum of these numbers 3 + 2 * 5?',
      'mcq': ['25', '13', '11', 'There is no correct Answer'],
      'correct': '13',
    },
  ];
  var questionX = 0;
  int _total_score = 0;

  void _resetQuiz() {
    setState(() {
      questionX = 0;
      _total_score = 0;
    });
  }

  void newQuestion(int score) {
    this._total_score += score;

    setState(() {
      questionX++;
      // questionX %= questions.length;
    });
    print(questionX);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: questionX < _questions.length
          ? Quiz(
              questions: _questions,
              questionX: questionX,
              newQuestion: newQuestion,
            )
          : Result(_total_score, _questions.length, _resetQuiz),
    ));
  }
}
