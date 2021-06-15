import 'package:flutter/material.dart';

import 'screens/quizscreen.dart';
import 'screens/startscreen.dart';

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
