import 'package:flutter/material.dart';

import './quiz.dart';
import './result..dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which anime is created by Hajime Isayama?',
      'answers': [
        {'text': 'Naruto', 'score': 0},
        {'text': 'DBZ', 'score': 0},
        {'text': 'AOT', 'score': 1},
        {'text': 'Death Note', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the capitol of New Zealand',
      'answers': [
        {'text': 'Helsinki', 'score': 0},
        {'text': 'Bristol', 'score': 1},
        {'text': 'Perth', 'score': 0},
        {'text': 'Benin City', 'score': 0},
      ],
    },
    {
      'questionText': 'When did Roman Empire Fall?',
      'answers': [
        {'text': '540 AD', 'score': 0},
        {'text': '476 AD', 'score': 1},
        {'text': '231 AD', 'score': 0},
        {'text': '764 AD', 'score': 0},
      ],
    },
    {
      'questionText': 'Who Created the C language?',
      'answers': [
        {'text': 'Guido van Rossum', 'score': 0},
        {'text': 'Brendan Eich', 'score': 0},
        {'text': 'Bjarne Stroustrup', 'score': 0},
        {'text': 'Dennis Ritchie', 'score': 1},
      ],
    },
    {
      'questionText': 'Who wrote "To Kill a Mockingbird" ?',
      'answers': [
        {'text': 'Harper Lee', 'score': 1},
        {'text': 'Kafka', 'score': 0},
        {'text': 'Mark Twain', 'score': 0},
        {'text': 'Fitzgerald', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
