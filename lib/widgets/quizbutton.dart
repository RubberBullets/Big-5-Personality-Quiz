import 'package:flutter/material.dart';

import '../styling/neumorphismui.dart';

class QuizButton extends StatelessWidget {
  final String buttonText;
  final Function buttonFunction;

  QuizButton({this.buttonText, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Neumorph(
      xAxis: 5,
      yAxis: 5,
      cornerRadius: 10,
      marginContent: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.blue, // foreground
          backgroundColor: Colors.grey[850],
        ),
        child: Text(buttonText),
        onPressed: buttonFunction,
      ),
    );
  }
}
