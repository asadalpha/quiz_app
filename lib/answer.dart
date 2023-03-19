import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        //width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answerText),
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.greenAccent)),
        ));
  }
}
