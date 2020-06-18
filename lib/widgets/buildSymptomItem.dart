import 'package:covid_19/core/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildSymptomItem({@required String path, @required String text}){
  return Column(
    children: <Widget>[
      Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: LinearGradient(
        colors: [
          AppColors.backgroudColor,
          Colors.white
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      ),
      border: Border.all(
        color: Colors.white
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(1,1,),
          spreadRadius: 1,
          blurRadius: 3
        )
      ]
    ),
    padding: EdgeInsets.only(top: 15),
    child: Image.asset(path),
    margin: EdgeInsets.only(right: 20),
  ),
  SizedBox(height: 7,),
  Text(
    text,
    style: TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.bold
    ),
  )
    ],
  );
}