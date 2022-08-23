import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {
  var questionIndex = 0;
  Function questionChange;
  var questionsAnswers = [];
  Quiz(this.questionIndex, this.questionChange, this.questionsAnswers);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionsAnswers[questionIndex]['Questions']),
      ...(questionsAnswers[questionIndex]['Answers']
              as List<Map<String, Object>>)
          .map((e) {
        return Answers(() => questionChange(e['Score']), e['Text']);
      }).toList()
    ]);
  }
}
