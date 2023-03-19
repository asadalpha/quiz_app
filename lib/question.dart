import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35,),
        Icon(Icons.tips_and_updates_outlined,size: 120,color: Colors.greenAccent,),
        SizedBox(height: 20,),
        Container(
          width: double.infinity,
          height: 80,
          margin: EdgeInsets.all(20),
          child: Text(questionText,
            style: TextStyle(fontSize: 25.0,color: Colors.blueGrey.shade700),
            textAlign: TextAlign.center,

          ),
        ),
      ],
    );
  }
}
