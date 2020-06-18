import 'package:covid_19/core/consts.dart';
import 'package:covid_19/widgets/buildFooter.dart';
import 'package:covid_19/widgets/buildHeader.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.mainColor,
              AppColors.mainColor.withOpacity(.5)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: SafeArea(
          child: Stack(
          children: <Widget>[
            buildHeader(context),
            Align(
              alignment: Alignment.center,
              child: Container(
              width: MediaQuery.of(context).size.width * .75,
              child: Center(
                child: Image.asset('assets/images/virus.png'),
              ),
            ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .25,
              right: 25,
              child: Container(
              width: MediaQuery.of(context).size.width * .4,
              child: Image.asset('assets/images/person.png'),
            ),
            ),
            buildFooter(context)
          ],
        ),
        )
      ),
    );
  }
}