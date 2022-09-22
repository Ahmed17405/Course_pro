import 'package:course_pro/Model/custom_color.dart';
import 'package:course_pro/first_screens/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Authentection/Sign_in.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
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
          Container(
              width: double.maxFinite,
              child: Image.asset("images/export/screen1.png",width: double.infinity,fit: BoxFit.fill,)),
          SizedBox(height: 0.1.sw,),
          Text("Plan Your Trip",style: Theme.of(context).textTheme.headline1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: .02.sw,bottom: .01.sw),
                child: Text("plan your trip, choose your destination.",style: Theme.of(context).textTheme.headline2,),
              ),
              Text("pick the best place for your holiday.",style: Theme.of(context).textTheme.headline2,),
            ],
          ),
          SizedBox(height: 0.01.sw,),

        ],
      ),
    );
  }
}
