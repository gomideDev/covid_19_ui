import 'package:covid_19/core/consts.dart';
import 'package:covid_19/core/flutter_icons.dart';
import 'package:covid_19/screens/statistics_page.dart';
import 'package:covid_19/widgets/buildAppBar.dart';
import 'package:covid_19/widgets/buildHomeHeader.dart';
import 'package:covid_19/widgets/buildPreventionItem.dart';
import 'package:covid_19/widgets/buildSymptomItem.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/images/virus2.png'),
                  buildHomeHeader()
                ],
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      text: 'Symptoms of ',
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildSymptomItem(
                          path: 'assets/images/1.png', text: 'Fever'),
                      buildSymptomItem(
                          path: 'assets/images/2.png', text: 'Dry Cought'),
                      buildSymptomItem(
                          path: 'assets/images/3.png', text: 'Headache'),
                      buildSymptomItem(
                          path: 'assets/images/4.png', text: 'Breathless'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Prevention',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildPreventionItem(
                          path: 'assets/images/a10.png',
                          text: 'HASH',
                          text2: 'hands often',
                          context: context
                        ),
                      buildPreventionItem(
                          path: 'assets/images/a4.png',
                          text: 'COVER',
                          text2: 'your cough',
                          context: context
                          ),
                      buildPreventionItem(
                          path: 'assets/images/a6.png',
                          text: 'ALWAYS',
                          text2: 'clean',
                          context: context
                          ),
                      buildPreventionItem(
                          path: 'assets/images/a9.png',
                          text: 'USE',
                          text2: 'Mask',
                          context: context
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Statistics())),
            child: Container(
            height: 90,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(
                        1,
                        1,
                      ),
                      spreadRadius: 1,
                      blurRadius: 3)
                ]),
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/map.png'),
                SizedBox(
                  width: 25,
                ),
                RichText(
                  text: TextSpan(
                      text: 'CASES\n',
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                          height: 1.3),
                      children: [
                        TextSpan(
                            text: 'overview worldwide\n',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: '8.061.549 confirmed',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.normal,
                                fontSize: 12))
                      ]),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.mainColor,
                  ), 
                  onPressed: null
                )
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 16),
          ),
          )
        ],
      ),
    );
  }
}
