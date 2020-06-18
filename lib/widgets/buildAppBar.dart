import 'package:covid_19/core/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildAppBar(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      IconButton(
        icon: Icon(
          FlutterIcons.menu,
          color: Colors.white,
        ), 
        onPressed: null
      ),
      Container(
        margin: EdgeInsets.all(16),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage('assets/images/profile.jpg')
          )
        ),
      )
    ],
  );
}