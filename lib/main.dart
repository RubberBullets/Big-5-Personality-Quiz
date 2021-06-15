import 'package:flutter/material.dart';

import './questions.dart';
import 'screens/startscreen.dart';
import 'layoutUI/quiz.dart';
import 'layoutUI/results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.grey[900],
          accentColor: Colors.grey[700],
          canvasColor: Colors.grey[850],
        ),
        routes: <String, WidgetBuilder>{
          'Big Five Quiz': (context) => MyBiGFiveQuizApp(),
        },
        home: StartScreen());
  }
}

// class StartScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey[850],
//         body: Container(
//           alignment: Alignment.center,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//   crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text('THE',
//               style: TextStyle(

//                 fontSize: 100,
//                 color: Colors.grey[850],
//                 fontWeight: FontWeight.bold,
//                 shadows: [
//                   Shadow(
//                     color: Colors.grey[800],
//                     offset: Offset(-5, -5),
//                     blurRadius: 10,
//                     ),
//                   Shadow(
//                     color: Colors.grey[900],
//                     offset: Offset(5, 5),
//                     blurRadius: 10,
//                   )
//                 ],
//               ),),
//               Text('BIG',
//               style: TextStyle(
//                 fontSize: 100,
//                 color: Colors.grey[850],
//                 fontWeight: FontWeight.bold,
//                 shadows: [
//                   Shadow(
//                     color: Colors.grey[800],
//                     offset: Offset(-5, -5),
//                     blurRadius: 10,
//                     ),
//                   Shadow(
//                     color: Colors.grey[900],
//                     offset: Offset(5, 5),
//                     blurRadius: 10,
//                   )
//                 ],
//               ),
//               ),
//               Text('FIVE',
//               style: TextStyle(
//                 fontSize: 100,
//                 color: Colors.grey[850],
//                 fontWeight: FontWeight.bold,
//                 shadows: [
//                   Shadow(
//                     color: Colors.grey[800],
//                     offset: Offset(-5, -5),
//                     blurRadius: 10,
//                     ),
//                   Shadow(
//                     color: Colors.grey[900],
//                     offset: Offset(5, 5),
//                     blurRadius: 10,
//                   )
//                 ],
//               ),
//               ),
//               Padding(padding: EdgeInsets.only(top:20,)),
//               QuizButton(
//                 buttonText: 'START QUIZ',
//                 buttonFunction: (){
//                   Navigator.pushNamed(
//       context,
//       'Big Five Quiz'
//   ); //'Big Five Quiz'
//                 },)
//             ],
//           ),
//         ),
//       );
//   }

// }

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

  void returnToStart() {
    Navigator.pop(context);
  }

  //Initializing build//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIG FIVE Personality Quiz'),
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
          : Results(
              restartQuiz: resetQuiz,
              goHome: returnToStart,
            ),
    );
  }
}
