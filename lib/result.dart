import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScoree;
  final Function resetQuiz2;

  String get resultPhrase {
    String resultText;
    if (totalScoree < 50) {
      resultText = 'Good';
    } else if (totalScoree < 75) {
      resultText = 'Very good';
    } else if (totalScoree < 100) {
      resultText = 'Brilliant';
    } else if (totalScoree < 150) {
      resultText = 'Awesome !!';
    } else {
      resultText = 'Excellent';
    }
    return resultText;
  }

  Result(this.totalScoree, this.resetQuiz2);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: resetQuiz2,
          child: Text(
            'Restart Quiz !!',
            style: TextStyle(fontSize: 24),
          ),
          style: TextButton.styleFrom(primary: Colors.red),
        )
      ],
    );
  }
}
