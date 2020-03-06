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
                      Center(
                        child: Text(
                          'Your Extroversion Score is: ' +
                              extroversion().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                          'this is a lot of stuff to write, blah blah blah.this is a lot of stuff to write, blah blah blah.this is a lot of stuff to write, blah blah blah.this is a lot of stuff to write, blah blah blah.this is a lot of stuff to write, blah blah blah.this is a lot of stuff to write, blah blah blah.this is a lot of stuff to write, blah blah blah.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                          ),
                      Center(
                        child: Text(
                          'Your Agreeableness Score is: ' +
                              agreeableness().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Your Conscientiousness Score is: ' +
                              conscientiousness().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Your Neuroticism Score is: ' +
                              neuroticism().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Your Openness to Experience Score is: ' +
                              openness().toString(),
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