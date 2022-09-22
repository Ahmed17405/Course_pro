
import 'package:course_pro/first_screens/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:course_pro/Model/custom_color.dart';

import '../Authentection/Sign_in.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.white1,
      body: Column(
        children: [
          SizedBox(height: 0.1.sh,),
          Center(
            child: Image.asset("images/export/logocolor1.png"),
          ),
          SizedBox(height: 0.08.sw,),
          Image.asset("images/export/screen2.png",width: double.infinity,fit: BoxFit.fill,),
          SizedBox(height: 0.1.sw,),
          Text("Select The Date",style: Theme.of(context).textTheme.headline1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: .02.sw,bottom: .01.sw),
                child: Text("select the day, book your ticket. We give",style: Theme.of(context).textTheme.headline2,),
              ),
              Text("you the best price.We guarantied.",style: Theme.of(context).textTheme.headline2,),
            ],
          ),
          SizedBox(
            height: 0.01.sw,
          ),

        ],
      ),
    );
  }
}

