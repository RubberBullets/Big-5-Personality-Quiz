import 'package:flutter/material.dart';

import './logic.dart';
import './questions.dart';



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
                      
                          Container(
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
                            width: double.maxFinite,
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
                          ),
                        
                      //Container(
                      //  child: Text(
                      //    questions[questionIndex]['question text'],
                      //    style: TextStyle(
                      //      color: Colors.white,
                      //      fontSize: 20,
                      //    ),
                      //  ),
                      //  padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
                      //  margin: EdgeInsets.fromLTRB(25, 15, 15, 35),
                      //  decoration: BoxDecoration(
                      //      borderRadius: BorderRadius.all(Radius.circular(10)),
                      //      color: Colors.grey[850],
                      //      boxShadow: [
                      //        BoxShadow(
                      //          color: Colors.grey[900],
                      //          offset: new Offset(9.5, 9.5),
                      //          blurRadius: 16.5,
                      //        ),
                      //        BoxShadow(
                      //          color: Colors.grey[800],
                      //          offset: new Offset(-9.5, -9.5),
                      //          blurRadius: 16.5,
                      //        )
                      //      ]),
                      //),
                      // Wrap(
                      //   spacing: 2,
                      //   runSpacing: 3,
                      //   alignment: WrapAlignment.spaceEvenly,
                      //   children: <Widget>[
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
                          child: Text('Disagree'),
                          onPressed: d,
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
                          child: Text('Slightly Disagree'),
                          onPressed: sd,
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
                          child: Text('Neutral'),
                          onPressed: n,
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
                          child: Text('Slightly Agree'),
                          onPressed: sa,
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
                          child: Text('Agree'),
                          onPressed: a,
                        ),
                      ),
                      //   ],
                      // ),
                    ],
                  ),
                );
  }
} 