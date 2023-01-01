import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerEntry;
  Answers(this.selectHandler, this.answerEntry);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(
          answerEntry,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
