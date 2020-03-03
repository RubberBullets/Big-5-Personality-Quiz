import 'package:flutter/material.dart';

import './Questions.dart';


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

  var questions = [
    {
      'question number': 1,
      'question text': 'I am the life of the party.',
      'score': null,
    },
    {
      'question number': 2,
      'question text': 'I Feel little concern for others.',
      'score': null,
    },
    {
      'question number': 3,
      'question text': 'I Am always prepared.',
      'score': null,
    },
    {
      'question number': 4,
      'question text': 'I Get stressed out easily.',
      'score': null,
    },
    {
      'question number': 5,
      'question text': 'I Have a rich vocabulary.',
      'score': null,
    },
    {
      'question number': 6,
      'question text': 'I Don\'t talk a lot.',
      'score': null,
    },
    {
      'question number': 7,
      'question text': 'I Am interested in people.',
      'score': null,
    },
    {
      'question number': 8,
      'question text': 'I Leave my belongings around.',
      'score': null,
    },
    {
      'question number': 9,
      'question text': 'I Am relaxed most of the time.',
      'score': null,
    },
    {
      'question number': 10,
      'question text': 'I Have difficulty understanding abstract ideas.',
      'score': null,
    },
    {
      'question number': 11,
      'question text': 'I Feel comfortable around people.',
      'score': null,
    },
    {
      'question number': 12,
      'question text': 'I Insult people.',
      'score': null,
    },
    {
      'question number': 13,
      'question text': 'I Pay attention to details.',
      'score': null,
    },
    {
      'question number': 14,
      'question text': 'I Worry about things.',
      'score': null,
    },
    {
      'question number': 15,
      'question text': 'I Have a vivid imagination.',
      'score': null,
    },
    {
      'question number': 16,
      'question text': 'I Keep in the background.',
      'score': null,
    },
    {
      'question number': 17,
      'question text': 'I Sympathize with others\' feelings.',
      'score': null,
    },
    {
      'question number': 18,
      'question text': 'I Make a mess of things.',
      'score': null,
    },
    {
      'question number': 19,
      'question text': 'I Seldom feel blue.',
      'score': null,
    },
    {
      'question number': 20,
      'question text': 'I Am not interested in abstract ideas.',
      'score': null,
    },
    {
      'question number': 21,
      'question text': 'I Start conversations.',
      'score': null,
    },
    {
      'question number': 22,
      'question text': 'I Am not interested in other people\'s problems.',
      'score': null,
    },
    {
      'question number': 23,
      'question text': 'I Get chores done right away.',
      'score': null,
    },
    {
      'question number': 24,
      'question text': 'I Am easily disturbed.',
      'score': null,
    },
    {
      'question number': 25,
      'question text': 'I Have excellent ideas.',
      'score': null,
    },
    {
      'question number': 26,
      'question text': 'I Have little to say.',
      'score': null,
    },
    {
      'question number': 27,
      'question text': 'I Have a soft heart.',
      'score': null,
    },
    {
      'question number': 28,
      'question text':
          'I Often forget to put things back in their proper place.',
      'score': null,
    },
    {
      'question number': 29,
      'question text': 'I Get upset easily.',
      'score': null,
    },
    {
      'question number': 30,
      'question text': 'I Do not have a good imagination.',
      'score': null,
    },
    {
      'question number': 31,
      'question text': 'I Talk to a lot of different people at parties.',
      'score': null,
    },
    {
      'question number': 32,
      'question text': 'I Am not really interested in others.',
      'score': null,
    },
    {
      'question number': 33,
      'question text': 'I Like order.',
      'score': null,
    },
    {
      'question number': 34,
      'question text': 'I Change my mood a lot.',
      'score': null,
    },
    {
      'question number': 35,
      'question text': 'I Am quick to understand things.',
      'score': null,
    },
    {
      'question number': 36,
      'question text': 'I Don\'t like to draw attention to myself.',
      'score': null,
    },
    {
      'question number': 37,
      'question text': 'I Take time out for others.',
      'score': null,
    },
    {
      'question number': 38,
      'question text': 'I Shirk my duties.',
      'score': null,
    },
    {
      'question number': 39,
      'question text': 'I Have frequent mood swings.',
      'score': null,
    },
    {
      'question number': 40,
      'question text': 'I Use difficult words.',
      'score': null,
    },
    {
      'question number': 41,
      'question text': 'I Don\'t mind being the center of attention.',
      'score': null,
    },
    {
      'question number': 42,
      'question text': 'I Feel others\' emotions.',
      'score': null,
    },
    {
      'question number': 43,
      'question text': 'I Follow a schedule.',
      'score': null,
    },
    {
      'question number': 44,
      'question text': 'I Get irritated easily.',
      'score': null,
    },
    {
      'question number': 45,
      'question text': 'I Spend time reflecting on things.',
      'score': null,
    },
    {
      'question number': 46,
      'question text': 'I Make people feel at ease.',
      'score': null,
    },
    {
      'question number': 47,
      'question text': 'I Make people feel at ease.',
      'score': null,
    },
    {
      'question number': 48,
      'question text': 'I Am exacting in my work.',
      'score': null,
    },
    {
      'question number': 49,
      'question text': 'I Often feel blue.',
      'score': null,
    },
    {
      'question number': 50,
      'question text': 'I Am full of ideas.',
      'score': null,
    },
  ];

  // var pointSystem = {
  //  'Disagree': 1,
  //  'Slightly Disagree': 2,
  //  'Neutral': 3,
  //  'Slightly Agree': 4,
  //  'Agree': 5,
  //};

  

  void nextQuestionD() {
    //questions[questionIndex]['score'] =  1;
    //setState(() {
     // questionIndex = questionIndex + 1;
    //  print(questionIndex);
    //});
    //print(pointSystem['Disagree']);
    //print(questions[questionIndex]['score']);

    //questions[questionIndex]['score'] =  1;

    //print(questions[questionIndex]['score']);
    print('first question score= ' +questions[0]['score'].toString());

    setState(() {
        questions[questionIndex]['score'] =  1;
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
    
    if (questionIndex < questions.length) {
      
    print(questions[questionIndex]['score']);
      print('another question still to come');
    } //else {
      //questions[questionIndex]['score'] =  1;
     // print(extroversion);}
     print('first question score= ' +questions[0]['score'].toString());
  }
  void nextQuestionSD() {
    //questions[questionIndex]['score'] =  2;
    //setState(() {
     // questionIndex = questionIndex + 1;
    //  print(questionIndex);
    //});
    //print(pointSystem['Slightly Disagree']);
    //print(questions[questionIndex]['score']);

    //questions[questionIndex]['score'] =  2;

    //print(questions[questionIndex]['score']);
    print('first question score= ' +questions[0]['score'].toString());

    setState(() {
        questions[questionIndex]['score'] =  2;
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
    
    if (questionIndex < questions.length) {
      
    print(questions[questionIndex]['score']);
      print('another question still to come');
    } //else {
      //questions[questionIndex]['score'] =  2;
     // print(extroversion);}
     print('first question score= ' +questions[0]['score'].toString());
  }
  void nextQuestionN() {
    //questions[questionIndex]['score'] =  3;
    //setState(() {
     // questionIndex = questionIndex + 1;
    //  print(questionIndex);
    //});
    //print(pointSystem['Neutral']);
    //print(questions[questionIndex]['score']);

    //questions[questionIndex]['score'] =  3;

    //print(questions[questionIndex]['score']);
    print('first question score= ' +questions[0]['score'].toString());

    setState(() {
        questions[questionIndex]['score'] =  3;
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
    
    if (questionIndex < questions.length) {
      
    print(questions[questionIndex]['score']);
      print('another question still to come');
    } //else {
      //questions[questionIndex]['score'] =  3;
     // print(extroversion);}
     print('first question score= ' +questions[0]['score'].toString());
     setState(() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
    
    print(questions[questionIndex]['score']);

    questions[questionIndex]['score'] =  3;

    print(questions[questionIndex]['score']);

    if (questionIndex < questions.length) {
      print('another question still to come');
    }
  }
  void nextQuestionSA() {
    //questions[questionIndex]['score'] =  4;
    //setState(() {
     // questionIndex = questionIndex + 1;
    //  print(questionIndex);
    //});
    //print(pointSystem['SlightlyAgree']);
    //print(questions[questionIndex]['score']);

    //questions[questionIndex]['score'] =  4;

    //print(questions[questionIndex]['score']);
    print('first question score= ' +questions[0]['score'].toString());

    setState(() {
        questions[questionIndex]['score'] =  4;
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
    
    if (questionIndex < questions.length) {
      
    print(questions[questionIndex]['score']);
      print('another question still to come');
    } //else {
      //questions[questionIndex]['score'] =  4;
     // print(extroversion);}
     print('first question score= ' +questions[0]['score'].toString());
  }
  void nextQuestionA() {
    //questions[questionIndex]['score'] =  5;
    //setState(() {
     // questionIndex = questionIndex + 1;
    //  print(questionIndex);
    //});
    //print(pointSystem['Agree']);
    //print(questions[questionIndex]['score']);

    //questions[questionIndex]['score'] =  5;

    //print(questions[questionIndex]['score']);
    print('first question score= ' +questions[0]['score'].toString());

    setState(() {
        questions[questionIndex]['score'] =  5;
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
    
    if (questionIndex < questions.length) {
      
    print(questions[questionIndex]['score']);
      print('another question still to come');
    } //else {
      //questions[questionIndex]['score'] =  5;
     // print(extroversion);}
     print('first question score= ' +questions[0]['score'].toString());
  }

  

   extroversion () {
    return (20 + questions[0]['score'] - questions[5]['score'] + questions[10]['score'] - questions[15]['score']+ questions[20]['score'] -questions[25]['score'] + questions[30]['score'] - questions[35]['score'] + questions[40]['score'] -questions[45]['score']);
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('BIG 5 Personality Quiz'),
          ),
          body: questionIndex < questions.length ? Column(
            children: <Widget>[
              Container(
                child: Text(questions[questionIndex]['question text']),
              ),
              RaisedButton(
                child: Text('Disagree'),
                onPressed: nextQuestionD,
              ),
              RaisedButton(
                child: Text('Slightly Disagree'),
                onPressed: nextQuestionSD,
              ),
              RaisedButton(
                child: Text('Neutral'),
                onPressed: nextQuestionN,
              ),
              RaisedButton(
                child: Text('Slightly Agree'),
                onPressed: nextQuestionSA,
              ),
              RaisedButton(
                child: Text('Agree'),
                onPressed: nextQuestionA,
              ),
            ],
          ): Center(child: Text(extroversion().toString()),
          ),)
    );
  }
}
