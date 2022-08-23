import "package:flutter/material.dart";

class Answers extends StatelessWidget {
  final Function changeQuestion;
  final String answer;
  Answers(
    this.changeQuestion(),
    this.answer,
  );
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          changeQuestion();
        },
        child: Text(answer));
  }
}
