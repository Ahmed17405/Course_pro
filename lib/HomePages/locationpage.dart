import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:course_pro/Model/custom_color.dart';

import 'Nav_class/bnb_class.dart';
import 'Sidepage.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.white1,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SidePage()));
          },
          child: Image.asset("images/export/SideMenu.png"),
        ),
        backgroundColor: customColor.white1,
        centerTitle: true,
        title: Text(
          "Location",
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Image.asset("images/c/usa1.jpg", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Image.asset("images/c/usa2.jpg", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Image.asset("images/c/usa3.jpg", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Image.asset("images/c/usa4.jpg", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Image.asset("images/c/usa5.jpg", fit: BoxFit.fill),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
