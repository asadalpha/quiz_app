import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 0) {
      resultText = 'You got it all wrong and your score is $resultScore';
    } else if (resultScore <= 4) {
      resultText = 'Your Score is $resultScore';
    // } else if (resultScore <= 2) {
    //   resultText = 'Your Score is 2';
    } else {
      resultText = 'You got it all right and your score is $resultScore!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () => {resetHandler() } ,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              child:  Text("Reset"),
            ),
          ),
        ],
      ),
    );
  }
}
