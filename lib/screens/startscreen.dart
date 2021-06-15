import 'package:flutter/material.dart';

import '../widgets/quizbutton.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'THE',
              style: TextStyle(
                fontSize: 100,
                color: Colors.grey[850],
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.grey[800],
                    offset: Offset(-5, -5),
                    blurRadius: 10,
                  ),
                  Shadow(
                    color: Colors.grey[900],
                    offset: Offset(5, 5),
                    blurRadius: 10,
                  )
                ],
              ),
            ),
            Text(
              'BIG',
              style: TextStyle(
                fontSize: 100,
                color: Colors.grey[850],
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.grey[800],
                    offset: Offset(-5, -5),
                    blurRadius: 10,
                  ),
                  Shadow(
                    color: Colors.grey[900],
                    offset: Offset(5, 5),
                    blurRadius: 10,
                  )
                ],
              ),
            ),
            Text(
              'FIVE',
              style: TextStyle(
                fontSize: 100,
                color: Colors.grey[850],
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.grey[800],
                    offset: Offset(-5, -5),
                    blurRadius: 10,
                  ),
                  Shadow(
                    color: Colors.grey[900],
                    offset: Offset(5, 5),
                    blurRadius: 10,
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              top: 20,
            )),
            QuizButton(
              buttonText: 'START QUIZ',
              buttonFunction: () {
                Navigator.pushNamed(context, 'Big Five Quiz'); //'Big Five Quiz'
              },
            )
          ],
        ),
      ),
    );
  }
}
