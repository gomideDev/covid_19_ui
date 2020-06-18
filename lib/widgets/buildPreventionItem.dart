import 'package:covid_19/core/consts.dart';
import 'package:covid_19/screens/statistics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildPreventionItem({@required String path, @required String text, @required String text2, @required BuildContext context}){
  return GestureDetector(
    onTap: null,
    child: Column(
    children: <Widget>[
      Container(
    width: 180,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
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
    padding: EdgeInsets.all(12),
    child: Row(
      children: <Widget>[
        Image.asset(path),
        SizedBox(width: 10,),
        RichText(
          text: TextSpan(
            text: '$text\n',
            style: TextStyle(
              color: AppColors.mainColor,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: text2,
                style: TextStyle(
                   color: Colors.black87,
                   fontWeight: FontWeight.normal
                )
              )
            ]
          ),
        )
      ],
    ),
    margin: EdgeInsets.only(right: 20),
  ),
    ],
  ),
  );
}