import 'package:Big_Five_Personality_Quiz/neumorphismUI.dart';
import 'package:flutter/material.dart';





class ResultScore extends StatelessWidget {

  final double progressValue;
  final String resultTotalText;

  ResultScore({this.progressValue,this.resultTotalText});

  @override
  Widget build(BuildContext context) {
    return Neumorph(
      yAxis: 9,
      xAxis: 9,
      cornerRadius: 10,
      paddingContent: EdgeInsets.fromLTRB(5, 5, 5, 5),
      marginContent: EdgeInsets.fromLTRB(18, 18, 18, 18),

      child: Row(
                            children: <Widget>[
                              Container(
                                      height: 50,
                                      width: 50,
                                      margin: EdgeInsets.fromLTRB(15, 15, 30, 15),
                                      child: CircularProgressIndicator(
                                        value: progressValue, 
                                        //extroversionScore(
                                         //   extroversion()),
                                        backgroundColor: Colors.grey,
                                        strokeWidth: 10,
                                        semanticsLabel: 'progress',
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(Colors.blue),
                                      ),
                                    ),
                              Expanded(
                                flex: 1,
                                child: 
                                Text(resultTotalText,
                                //  'Your Extroversion Score is: ' +
                                //      extroversion().toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
    );
  }
}