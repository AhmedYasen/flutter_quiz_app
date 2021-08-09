import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final result;
  final allNumberOfQuestions;
  final resetCallBack;

  Result(this.result, this.allNumberOfQuestions, this.resetCallBack);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You Answered\n$result of $allNumberOfQuestions\nQuestions',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          TextButton(
            onPressed: resetCallBack,
            child: Text(
              'reset quiz',
              style: TextStyle(color: Colors.blueAccent, fontSize: 22),
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
