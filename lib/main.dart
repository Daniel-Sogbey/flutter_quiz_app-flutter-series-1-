import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  final List<Map<String, Object>> questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor',
      'answers': ['Angela', 'Max', 'Stephen', 'Ed'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < questions.length) {
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questionText: questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(
                        answerText: answer,
                        answerQuestionHandler: _answerQuestion);
                  }).toList()
                ],
              )
            : Text('Questions exhausted'),
      ),
    );
  }
}
