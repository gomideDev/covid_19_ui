import 'package:covid_19/core/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildGender({IconData icon, Color color, String title, String value}){
  return Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    border: Border.all(
      color: Colors.white
    ),
    boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1,1,),
          spreadRadius: 1,
          blurRadius: 1
        )
      ]
    ),
    padding: EdgeInsets.all(10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: color,
              size: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24
                  ),
                ),
                Text(
                  'confirmed\ncase',
                  style: TextStyle(
                    color: Colors.black38,
                    height: 1.5
                  ),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 20,),
        Text(
          value,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 32
          ),
        )
      ],
    ),
  );
}