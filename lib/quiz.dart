
import 'package:flutter/material.dart';

import 'questionarea.dart';
import './quizbutton.dart';


class Quiz extends StatelessWidget {
  
  final int questionIndex;
  final Function d;
  final Function sd;
  final Function n;
  final Function sa;
  final Function a;

  Quiz({this.questionIndex,this.d,this.sd,this.n,this.sa,this.a,});


  @override
  Widget build(BuildContext context) {
    return Center(
                  child: Column(
                    children: <Widget>[
                      
                      QuestionArea(questionIndex:questionIndex),
                        
                      
                      QuizButton(buttonText:'DISAGREE',buttonFunction:d,),
                      QuizButton(buttonText:'SLIGHTLY DISAGREE',buttonFunction:sd,),
                      QuizButton(buttonText:'NEUTRAL',buttonFunction:n,),
                      QuizButton(buttonText:'SLIGHTLY AGREE',buttonFunction:sa,),
                      QuizButton(buttonText:'AGREE',buttonFunction:a,),
                      
                    
                    ],
                  ),
                );
  }
} 