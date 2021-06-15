import 'package:flutter/material.dart';

import '../logic.dart';
import '../questions.dart';
import '../styling/neumorphismui.dart';

class QuestionArea extends StatelessWidget {
  final int questionIndex;

  QuestionArea({this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Neumorph(
      cornerRadius: 10,
      xAxis: 9,
      yAxis: 9,
      marginContent: EdgeInsets.fromLTRB(15, 30, 15, 30),
      paddingContent: EdgeInsets.fromLTRB(13, 13, 13, 13),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
            child: CircularProgressIndicator(
              value: currentProgress(questionIndex, questions.length),
              backgroundColor: Colors.grey,
              strokeWidth: 10,
              semanticsLabel: 'progress',
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              questions[questionIndex]['question text'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
