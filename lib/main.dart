import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(
      MyFirstApp(),
    );

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  final _questions = const [
    {
      'theQuestion': 'Who\'s your favourite Player ?',
      'theAnswer': [
        {'text': 'CR7', 'score': 10},
        {'text': 'Messi', 'score': 20},
        {'text': 'Ronaldinho', 'score': 30},
        {'text': 'Neymar', 'score': 40},
      ]
    },
    {
      'theQuestion': 'Who\'s your favourite Singer ?',
      'theAnswer': [
        {'text': 'Wegz', 'score': 10},
        {'text': 'Amr Diab', 'score': 20},
        {'text': 'Tamer Hosny', 'score': 30},
        {'text': 'Afroto', 'score': 40},
      ]
    },
    {
      'theQuestion': 'What\'s your favourite car ?',
      'theAnswer': [
        {'text': 'BMW', 'score': 10},
        {'text': 'Mercedes', 'score': 20},
        {'text': 'Toyota', 'score': 30},
        {'text': 'Seat', 'score': 40},
      ]
    },
    {
      'theQuestion': 'What\'s your favourite food ?',
      'theAnswer': [
        {'text': 'Mac', 'score': 10},
        {'text': 'KFC', 'score': 20},
        {'text': 'Bazooka', 'score': 30},
        {'text': 'Heart attack', 'score': 40},
      ]
    },
    {
      'theQuestion': 'What\'s your favourite drink ?',
      'theAnswer': [
        {'text': 'Espresso', 'score': 10},
        {'text': 'Tea', 'score': 20},
        {'text': 'Coffe', 'score': 30},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(
      () {
        _questionIndex = 0;
        _totalScore = 0;
      },
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(
      () {
        _questionIndex++;
      },
    );
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('One More question !');
    } else {
      print('No More questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'First App',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions2: _questions,
                answerQuestion2: _answerQuestion,
                questionIndex2: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
