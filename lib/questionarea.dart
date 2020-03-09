import 'package:flutter/material.dart';

import './logic.dart';
import './questions.dart';

class QuestionArea extends StatelessWidget {

  final int questionIndex;

  QuestionArea({this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
                            //color: Colors.grey[600],
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.grey[850],
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[900],
                                    offset: new Offset(9.5, 9.5),
                                    blurRadius: 16.5,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey[800],
                                    offset: new Offset(-9.5, -9.5),
                                    blurRadius: 16.5,
                                  )
                                ]),
                            width: double.infinity,
                            //height: 100,
                            padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
                            margin: EdgeInsets.fromLTRB(15, 30, 15, 30),
                            //child: Container(
                            //  width: 100,
                            //  height: 100,
                            //  padding: EdgeInsets.fromLTRB(13, 13, 13, 13),

                            //  decoration: BoxDecoration(
                            //    color: Colors.transparent,
                            //    borderRadius: BorderRadius.all(Radius.circular(15)),
                            //    boxShadow: [
                            //      BoxShadow(
                            //        color: Colors.grey[700],
                            //        offset: const Offset(0.0, 0.0),
                            //        spreadRadius: 2,
                            //      ),
                            //      BoxShadow(
                            //        color: Colors.grey[850],
                            //        offset: const Offset(0.0, 0.0),
                            //        spreadRadius: 1.0,
                            //        blurRadius: 2.0,
                            //      ),
                            //    ],
                            //  ),
                            child: Row(
                              
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
                                  child: CircularProgressIndicator(
                                    value: currentProgress(
                                        questionIndex, questions.length),
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
                              questions[questionIndex]['question text'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                              ],
                            ),
                            //),
                          //),
                          );
  }
}

