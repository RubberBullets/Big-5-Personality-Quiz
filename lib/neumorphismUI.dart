import 'package:flutter/material.dart';



class Neumorph extends StatelessWidget {

  final Widget child;
  final double xAxis;
  final double yAxis;
  final double cornerRadius;
  final EdgeInsetsGeometry paddingContent;
  final EdgeInsetsGeometry marginContent;


  

  Neumorph({this.child,this.xAxis,this.yAxis,this.cornerRadius,this.paddingContent,this.marginContent});

  @override
  Widget build(BuildContext context) {

    final double blurryness = xAxis + yAxis;
    
    return Container(
                            //color: Colors.grey[600],
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(cornerRadius)),
                                color: Colors.grey[850],
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[900],
                                    offset: new Offset(xAxis, yAxis),
                                    blurRadius: blurryness,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey[800],
                                    offset: new Offset(-xAxis, -yAxis),
                                    blurRadius: blurryness,
                                  )
                                ]),
                            width: double.infinity,
                            //height: 100,
                            padding: paddingContent,
                            //EdgeInsets.fromLTRB(13, 13, 13, 13),
                            margin: marginContent,
                            //EdgeInsets.fromLTRB(15, 30, 15, 30),
                            
                            child: child,
                            
                          );
  }
}