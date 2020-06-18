import 'package:covid_19/core/flutter_icons.dart';
import 'package:covid_19/widgets/buildStatisticItem.dart';
import 'package:covid_19/widgets/chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildStatistics(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    padding: EdgeInsets.all(24),
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
    child: Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 150,
          width: 150,
          child: DonutPieChart.withSampleData(),
        ),
        SizedBox(width: 25,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildStatisticItem(color: Colors.blueAccent, title: 'Confirmed', value: '8.061.549'),
        buildStatisticItem(color: Colors.greenAccent, title: 'Recovered', value: '477.364'),
        buildStatisticItem(color: Colors.redAccent, title: 'Deaths', value: '440.290')
      ],
    ),
   
      ],
    ),
    )
  );
}