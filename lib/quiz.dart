
import 'package:flutter/material.dart';

import 'questionarea.dart';


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
                    
                    ],
                  ),
                );
  }
} 