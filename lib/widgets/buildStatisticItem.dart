import 'package:covid_19/core/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildStatisticItem({Color color, String title, String value}){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Icon(
        FlutterIcons.label,
        size: 50,
        color: color,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.black38
            ),
          ),
          SizedBox(height: 5,),
            Text(
            value,
          )
        ],
      )
    ],
  );
}