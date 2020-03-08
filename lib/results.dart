import 'package:flutter/material.dart';

import './logic.dart';

class Results extends StatelessWidget {
  final Function restartQuiz;

  Results({@required this.restartQuiz});

  @override
  Widget build(BuildContext context){

    return  SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Row(
                          children: <Widget>[
                            Container(
                                    height: 50,
                                    width: 50,
                                    margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
                                    child: CircularProgressIndicator(
                                      value: extroversionScore(
                                          extroversion()),
                                      backgroundColor: Colors.grey,
                                      strokeWidth: 10,
                                      semanticsLabel: 'progress',
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(Colors.blue),
                                    ),
                                  ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Your Extroversion Score is: ' +
                                    extroversion().toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Row(
                          children: <Widget>[
                            Container(
                                    height: 50,
                                    width: 50,
                                    margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
                                    child: CircularProgressIndicator(
                                      value: agreeablenessScore(
                                          agreeableness()),
                                      backgroundColor: Colors.grey,
                                      strokeWidth: 10,
                                      semanticsLabel: 'progress',
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(Colors.blue),
                                    ),
                                  ),
                            Expanded(
                              child: Text(
                                'Your Agreeableness Score is: ' +
                                    agreeableness().toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Row(
                          children: <Widget>[
                            Container(
                                    height: 50,
                                    width: 50,
                                    margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
                                    child: CircularProgressIndicator(
                                      value: conscientiousnessScore(
                                          conscientiousness()),
                                      backgroundColor: Colors.grey,
                                      strokeWidth: 10,
                                      semanticsLabel: 'progress',
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(Colors.blue),
                                    ),
                                  ),
                            Expanded(
                              child: Text(
                                'Your Conscientiousness Score is: ' +
                                    conscientiousness().toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Row(
                          children: <Widget>[
                            Container(
                                    height: 50,
                                    width: 50,
                                    margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
                                    child: CircularProgressIndicator(
                                      value: neuroticismScore(
                                          neuroticism()),
                                      backgroundColor: Colors.grey,
                                      strokeWidth: 10,
                                      semanticsLabel: 'progress',
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(Colors.blue),
                                    ),
                                  ),
                            Expanded(
                              child: Text(
                                'Your Neuroticism Score is: ' +
                                    neuroticism().toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Row(
                          children: <Widget>[
                            Container(
                                    height: 50,
                                    width: 50,
                                    margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
                                    child: CircularProgressIndicator(
                                      value: opennessScore(
                                          openness()),
                                      backgroundColor: Colors.grey,
                                      strokeWidth: 10,
                                      semanticsLabel: 'progress',
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(Colors.blue),
                                    ),
                                  ),
                            Expanded(
                              child: Text(
                                'Your Openness to Experience Score is: ' +
                                    openness().toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey[850],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[900],
                                offset: new Offset(5.5, 5.5),
                                blurRadius: 10.5,
                              ),
                              BoxShadow(
                                color: Colors.grey[800],
                                offset: new Offset(-5.5, -5.5),
                                blurRadius: 10.5,
                              )
                            ]),
                        child: RaisedButton(
                          elevation: 0,
                            focusElevation: 0,
                            hoverElevation: 0,
                            textColor: Colors.blue,
                            color: Colors.grey[850],
                          child: Text('Restart Quiz '),
                          onPressed: restartQuiz,
                        ),
                      ),
                    ],
                  ),
                );
}
}