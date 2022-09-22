import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:course_pro/Model/custom_color.dart';

import '../Authentection/Sign_in.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.white1,
      body: Column(
        children: [
          SizedBox(
            height: 0.1.sh,
          ),
          Center(
            child: Image.asset("images/export/logocolor1.png"),
          ),
          SizedBox(
            height: 0.08.sw,
          ),
          Image.asset(
            "images/export/screen3.png",width: double.infinity,fit: BoxFit.fill,
          ),
          SizedBox(
            height: 0.09.sw,
          ),
          Text(
            "Enjoy Your Trip",
            style: Theme.of(context).textTheme.headline1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: .02.sw,bottom: .01.sw),
                child: Text(
                  "Enjoy your holiday! don’t forget to take",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              Text(
                "a photo and share to the world.",
                style: Theme.of(context).textTheme.headline2,
              ),
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
