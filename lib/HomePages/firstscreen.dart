import 'dart:async';
import 'package:course_pro/Model/custom_color.dart';
import 'package:flutter/material.dart';
import '../first_screens/pageveiw.dart';

class splashScreens extends StatefulWidget {
  const splashScreens({Key? key}) : super(key: key);

  @override
  State<splashScreens> createState() => _splashScreensState();
}

class _splashScreensState extends State<splashScreens> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>StartScreens())));

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.white1,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  customColor.blue,
                  customColor.purple
            ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter

            )
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/splash1.png"),
                Image.asset("images/splash2.png"),
              ],
            ),
          )
      ),
    );
  }
}
