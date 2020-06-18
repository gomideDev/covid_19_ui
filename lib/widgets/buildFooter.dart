import 'package:covid_19/core/consts.dart';
import 'package:covid_19/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildFooter(BuildContext context){
  return Positioned(
    bottom: 50,
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Coronavirus disease (COVID-19)',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.white
        ),
      ),
      Text(
        'is an infectanus disease causer by a new\n virus.',
        textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 18,
          height: 1.5,
          color: Colors.white
        ),
      ),
      SizedBox(height: 25,),
      GestureDetector(
        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage())),
        child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1,1),
              spreadRadius: 1,
              blurRadius: 3
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        width: MediaQuery.of(context).size.width * .85,
        height: 60,
        child: Center(
          child: Text(
        'GET STARTED',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.mainColor,
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
      ),
        ),
      ),
      )
    ],
  ),
    )
  );
}