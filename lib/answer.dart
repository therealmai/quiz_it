import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blue),
      ),
    );
  }
}
