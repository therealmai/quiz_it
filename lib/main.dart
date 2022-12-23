import 'package:flutter/material.dart';


import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
      {
        'questionText': 'What is your favorite color?',
        'answers': [
        {'text':'Black', 'score':10}, 
        {'text':'Red', 'score':6}, 
        {'text':'Green', 'score': 5}, 
        {'text':'White', 'score': 8}],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [{'text':'Rabbit', 'score': 5}, 
        {'text':'Lion', 'score': 8}, 
        {'text':'Owl', 'score': 10}]
      },
      {
        'questionText': 'What\'s your favorite game?',
        'answers': [{'text':'Hades', 'score': 5}, 
        {'text':'Dota', 'score':5}, 
        {'text':'Witcher', 'score':5}, 
        {'text':'All of the above', 'score':10}]
      },
    ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print("Score $_totalScore");
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length){
      print('We have more questions');
    }else{
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QuizHub'),
        ),
        body: _questionIndex < _questions.length ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions) 
        : Result(_totalScore, _resetQuiz)
        ) ,
      );
  }
}
