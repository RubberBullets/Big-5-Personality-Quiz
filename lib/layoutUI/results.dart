import 'package:flutter/material.dart';

import '../logic.dart';
import '../widgets/resultscore.dart';
import '../widgets/quizbutton.dart';


class Results extends StatelessWidget {
  final Function restartQuiz;

  final Function goHome;

  Results({@required this.restartQuiz, this.goHome,});

  @override
  Widget build(BuildContext context){

    return  SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      ResultScore(
                        progressValue: extroversionScore(extroversion()),
                        resultTotalText: ('Your Extroversion Score is: ' +
                                    extroversion().toString()),
                        resultTotalScore: extroversion(),
                        personalityKey: 'Extroversion',
                        resultColor: Colors.blueAccent,
                                          ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Text(
                            '''Extraversion (or extroversion) is characterized by excitability, sociability, talkativeness, assertiveness, and high amounts of emotional expressiveness.

People who are high in extraversion are outgoing and tend to gain energy in social situations. 

Being around other people helps them feel energized and excited.People who are low in extraversion (or introverted) tend to be more reserved and have less energy to expend in social settings.

Social events can feel draining and introverts often require a period of solitude and quiet in order to "recharge."''',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            ),
                      ),
                      ResultScore(
                        progressValue: agreeablenessScore(agreeableness()),
                        resultTotalText: ('Your Agreeableness Score is: ' +
                                    agreeableness().toString()),
                        resultTotalScore: agreeableness(),
                        personalityKey: 'Agreeableness',
                        resultColor: Colors.cyanAccent,
                                          ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Text(
                            '''This personality dimension includes attributes such as trust, altruism, kindness, affection, and other prosocial behaviours.
                            
People who are high in agreeableness tend to be more cooperative while those low in this trait tend to be more competitive and sometimes even manipulative.''',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            ),
                      ),
                      ResultScore(
                        progressValue: conscientiousnessScore(conscientiousness()),
                        resultTotalText: ('Your Conscientiousness Score is: ' +
                                    conscientiousness().toString()),
                        resultTotalScore: conscientiousness(),
                        personalityKey: 'Conscientiousness',
                        resultColor: Colors.deepPurpleAccent,
                                          ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Text(
                            '''Standard features of this dimension include high levels of thoughtfulness, good impulse control, and goal-directed behaviors.
                            
  Highly conscientious people tend to be organized and mindful of details. They plan ahead, think about how their behavior affects others, and are mindful of deadlines.''',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            ),
                      ),
                      ResultScore(
                        progressValue: neuroticismScore(neuroticism()),
                        resultTotalText: ('Your Neuroticism Score is: ' +
                                    neuroticism().toString()),
                        resultTotalScore: neuroticism(),
                        personalityKey: 'Neuroticism',
                        resultColor: Colors.indigoAccent,
                                          ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Text(
                            '''Neuroticism is a trait characterized by sadness, moodiness, and emotional instability.Individuals who are high in this trait tend to experience mood swings, anxiety, irritability, and sadness. 
                            
  Those low in this trait tend to be more stable and emotionally resilient.''',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            ),
                      ),
                      ResultScore(
                        progressValue: opennessScore(openness()),
                        resultTotalText: ('Your Openness Score is: ' +
                                    openness().toString()),
                        resultTotalScore:openness(),
                        personalityKey: 'Openness',
                        resultColor: Colors.limeAccent,
                                          ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Text(
                            '''This trait features characteristics such as imagination and insight.
                            
People who are high in this trait also tend to have a broad range of interests. 

They are curious about the world and other people and eager to learn new things and enjoy new experiences.

People who are high in this trait tend to be more adventurous and creative.

People low in this trait are often much more traditional and may struggle with abstract thinking.''',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            ),
                      ),
                      QuizButton(
                        buttonText:'RESTART QUIZ',
                        buttonFunction:restartQuiz,
                        ),
                      QuizButton(
                        buttonText:'QUIT TO HOME',
                        buttonFunction: goHome,
),
                      
                    ],
                  ),
                );
}
}