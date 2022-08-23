import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/score.dart';
import 'quiz.dart';
import 'score.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  Myapp({Key key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  get child => null;
  var _totalscore = 0;
  var _questionIndex = 0;
  _questionChange(int _score) {
    _totalscore += _score;
    setState(() {
      _questionIndex++;

      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questionsAnswers = [
      {
        'Questions': 'Whats your name',
        "Answers": [
          {'Text': 'max', 'Score': 1},
          {'Text': 'Tom', 'Score': 2},
          {'Text': 'kevin', 'Score': 3}
        ]
      },
      {
        'Questions': 'Whats your animal',
        "Answers": [
          {'Text': 'cat', 'Score': 1},
          {'Text': 'dog', 'Score': 2},
          {'Text': 'camel', 'Score': 3}
        ]
      }
    ];
    return (MaterialApp(
      title: 'basic app',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Basic App"),
          ),
          body: _questionIndex < questionsAnswers.length
              ? Quiz(_questionIndex, _questionChange, questionsAnswers)
              : Score(_totalscore)),
    ));
  }
}
