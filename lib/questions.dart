import "package:flutter/material.dart";

class Question extends StatelessWidget {
  //const Question({Key key, this.question}) : super(key: key);
  final String question;
  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: (Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.brown, fontSize: 30.00),
      )),
    );
  }
}
