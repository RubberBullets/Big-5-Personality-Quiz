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

  //list of a question mapped with text,score & QN//

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

//Progress Indicator function//
  currentProgress(questionsCompleted,totalQuestions){
    
     return (questionsCompleted / totalQuestions);
    
  }

//Scoring functions for big 5 segments//

  extroversion() {
    return (20 +
        questions[0]['score'] -
        questions[5]['score'] +
        questions[10]['score'] -
        questions[15]['score'] +
        questions[20]['score'] -
        questions[25]['score'] +
        questions[30]['score'] -
        questions[35]['score'] +
        questions[40]['score'] -
        questions[45]['score']);
  }
  agreeableness() {
    return (14 -
        questions[1]['score'] +
        questions[6]['score'] -
        questions[11]['score'] +
        questions[16]['score'] -
        questions[21]['score'] +
        questions[26]['score'] -
        questions[31]['score'] +
        questions[36]['score'] +
        questions[41]['score'] +
        questions[46]['score']);
  }
  conscientiousness() {
    return (14 +
        questions[2]['score'] -
        questions[7]['score'] +
        questions[12]['score'] -
        questions[17]['score'] +
        questions[22]['score'] -
        questions[27]['score'] +
        questions[32]['score'] -
        questions[37]['score'] +
        questions[42]['score'] +
        questions[47]['score']);
  }
  neuroticism() {
    return (38 -
        questions[3]['score'] +
        questions[8]['score'] -
        questions[13]['score'] +
        questions[18]['score'] -
        questions[23]['score'] -
        questions[28]['score'] -
        questions[33]['score'] -
        questions[38]['score'] -
        questions[43]['score'] -
        questions[48]['score']);
  }
  openness() {
    return (8 +
        questions[4]['score'] -
        questions[9]['score'] +
        questions[14]['score'] -
        questions[19]['score'] +
        questions[24]['score'] -
        questions[29]['score'] +
        questions[34]['score'] +
        questions[39]['score'] +
        questions[44]['score'] +
        questions[49]['score']);
  }
  //Initializing build//

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('BIG 5 Personality Quiz'),
      ),
      body: questionIndex < questions.length
          ? Center(
            child: Column(
                children: <Widget>[
                  Container(
                    //color: Colors.grey[600],
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)),color: Colors.grey[600], ),
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.fromLTRB(15,15,15,15),
                    child: CircularProgressIndicator(value: currentProgress(questionIndex,questions.length),
                      backgroundColor: Colors.grey,
                      strokeWidth: 10,
                      semanticsLabel: 'progress',

                    ),
                  ),
                  Container(
                    child: Text(questions[questionIndex]['question text']),
                    padding: EdgeInsets.fromLTRB(15,15,15,15),
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
              ),
          )
          : Column(
            children: <Widget>[
              Center(
                  child: Text(
                      'Your Extroversion Score is: ' + extroversion().toString()),
                ),
              Center(
                  child: Text(
                      'Your Agreeableness Score is: ' + agreeableness().toString()),
                ),
              Center(
                  child: Text(
                      'Your Conscientiousness Score is: ' + conscientiousness().toString()),
                ),
              Center(
                  child: Text(
                      'Your Neuroticism Score is: ' + neuroticism().toString()),
                ),
              Center(
                  child: Text(
                      'Your Openness to Experience Score is: ' + openness().toString()),
                ),
              RaisedButton(
                  child: Text(
                      'Restart Quiz '),
                  onPressed: resetQuiz,
                ),
            ],
          ),
    ));
  }
}
