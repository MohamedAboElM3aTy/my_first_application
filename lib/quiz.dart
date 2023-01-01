import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions2;
  final Function answerQuestion2;
  final int questionIndex2;

  Quiz(
      {@required this.questions2,
      @required this.answerQuestion2,
      @required this.questionIndex2});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Questions(
            questions2[questionIndex2]['theQuestion'],
          ),
          ...(questions2[questionIndex2]['theAnswer']
                  as List<Map<String, Object>>)
              .map(
            (answer) {
              return Answers(
                () => answerQuestion2(answer['score']),
                answer['text'],
              );
            },
          ).toList()
        ],
      ),
    );
  }
}
