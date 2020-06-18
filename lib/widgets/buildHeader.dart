import 'package:flutter/widgets.dart';

Widget buildHeader(BuildContext context){
  return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Align(
      alignment: Alignment.topCenter,
      child: Image.asset('assets/images/logo.png'),
    ),
  );
}