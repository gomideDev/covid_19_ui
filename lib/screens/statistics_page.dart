import 'package:covid_19/core/consts.dart';
import 'package:covid_19/core/flutter_icons.dart';
import 'package:covid_19/widgets/buildAppBar.dart';
import 'package:covid_19/widgets/buildGender.dart';
import 'package:covid_19/widgets/buildStatistcs.dart';
import 'package:covid_19/widgets/buildStatisticItem.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: 275,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)
              )
            ),
            padding: EdgeInsets.only(top: 25),
            child: Image.asset('assets/images/virus2.png'),
          ),
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'STATISTICS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                buildStatistics(),
                Padding(
                  padding: EdgeInsets.all(16),
                  child:  Row(
                children: <Widget>[
                  Expanded(
                    child: buildGender(icon: FlutterIcons.male, color: Colors.orangeAccent, title: 'MALE', value: '60.0%'),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: buildGender(icon: FlutterIcons.female, color: Colors.pinkAccent, title: 'FEMALE', value: '40.0%'),
                  )
                  
                  ],
                ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: RichText(
                  text: TextSpan(
                      text: 'Global cases of ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87,
                      ),
                      children: [
                        TextSpan(
                            text: 'Covid 19',
                            style: TextStyle(color: AppColors.mainColor))
                      ]),
                ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/map.png'),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}