import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What\'s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QuizHub'),
        ),
        body: Column(
          children: [
            const Text('The Question'),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            ElevatedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () => print('Answer 3 chosen')),
          ],
        ),
      ),
    );
  }
}
