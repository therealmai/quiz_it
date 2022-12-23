import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText;
    if (resultScore <= 10) {
      resultText = "You don't know me";
    } else if (resultScore <= 20 && resultScore >= 11) {
      resultText = "You know me";
    } else if (resultScore <= 30 && resultScore >= 21) {
      resultText = "Stalker";
    } else {
      resultText = "You did it";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            width: double.infinity,
            child: ElevatedButton(
            child: Text("Reset Quiz"),
            onPressed: resetHandler,
          ))
        ],
      ),
    );
  }
}
