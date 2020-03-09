import 'package:Big_Five_Personality_Quiz/quiz.dart';
import 'package:Big_Five_Personality_Quiz/results.dart';
import 'package:flutter/material.dart';



import './questions.dart';

import './results.dart';

void main() {
  runApp(MyBiGFiveQuizApp());
}

class MyBiGFiveQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyBiGFiveQuizAppState();
  }
}

class MyBiGFiveQuizAppState extends State<MyBiGFiveQuizApp> {
  int questionIndex = 0;

  //Button Functions that set value on press to scoring function//

  void nextQuestionD() {
    print('first question score= ' + questions[0]['score'].toString());

    setState(() {
      questions[questionIndex]['score'] = 1;
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });

    if (questionIndex < questions.length) {
      print(questions[questionIndex]['score']);
      print('another question still to come');
      print(questions.length);
    }
    print('first question score= ' + questions[0]['score'].toString());
  }

  void nextQuestionSD() {
    setState(() {
      questions[questionIndex]['score'] = 2;
      questionIndex = questionIndex + 1;
    });
  }

  void nextQuestionN() {
    setState(() {
      questions[questionIndex]['score'] = 3;
      questionIndex = questionIndex + 1;
    });
  }

  void nextQuestionSA() {
    setState(() {
      questions[questionIndex]['score'] = 4;
      questionIndex = questionIndex + 1;
    });
  }

  void nextQuestionA() {
    setState(() {
      questions[questionIndex]['score'] = 5;
      questionIndex = questionIndex + 1;
    });
  }

//reset quiz function//
  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  //Initializing build//

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.grey[900],
          accentColor: Colors.grey[700],
          canvasColor: Colors.grey[850],
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('BIG 5 Personality Quiz'),
          ),
          body: questionIndex < questions.length
              ? SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Quiz(
                        questionIndex: questionIndex,
                        d: nextQuestionD,
                        sd: nextQuestionSD,
                        n: nextQuestionN,
                        sa: nextQuestionSA,
                        a: nextQuestionA,
                      ),
                    ],
                  ),
                )
              : Results(restartQuiz: resetQuiz),
        ));
  }
}
