import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String btnName;

  const Answer({required this.btnName, required this.handler});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(
          btnName,
          style: TextStyle(fontSize: 16),
        ),
        onPressed: handler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),
          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
        ),
      ),
    );
  }
}
