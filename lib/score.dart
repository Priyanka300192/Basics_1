import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Score extends StatelessWidget {
  final int totalScore;
  Score(this.totalScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          'No More Questions',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Your Score is $totalScore')
      ]),
    );
  }
}
