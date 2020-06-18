import 'package:covid_19/widgets/buildAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildHomeHeader(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      buildAppBar(),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
        'COVID-19',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 32
        ),
      ),
      ),
      SizedBox(height: 25,),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
        'Coronavirus Relifer Fund',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      ),
      SizedBox(height: 10,),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
        'to this fund will help to stop the virus is spread and give communitieson the font lines',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          height: 1.5
        ),
      ),
      ),
      SizedBox(height: 25,),
      Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              onPressed: (){

              },
              color: Colors.blue,
              child: Text(
                'DONATE NOW',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: RaisedButton(
              onPressed: (){

              },
              color: Colors.red,
              child: Text(
                'EMERGENCY',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
          )
        ],
      )
    ],
  );
}