import 'dart:convert';

import 'package:course_pro/Model/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  bool isloaded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.white1,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: .065.sw,
                color: Colors.black54,
              ))
        ],
        centerTitle: true,
        toolbarHeight: .2.sw,
        leadingWidth: .3.sw,
        backgroundColor: customColor.white1,
        title: Text("Paris",style: TextStyle(fontSize: 20.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600),),
        leading:
        Padding(
          padding:EdgeInsets.only(left: .04.sw),
          child: GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios,size: 22,color: Colors.black45,),
                Text("Back",style: TextStyle(color: Colors.black45,),)
              ],
            ),
          ),
        )
      ),
      body:
      SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(
              height: 2.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                  height: .77.sw,
                    child: Image.asset("images/export/pic1.jpg",width: double.infinity,fit: BoxFit.fill,),
                  ),
                  SizedBox(height: .09.sw,),
                  Center(
                    child: Text("Disneyland Paris",style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: .08.sw,left: .09.sw,right: .12.sw ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:EdgeInsets.only(bottom:.02.sw, ),
                          child: Text("Depature",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w700 ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom:.03.sw, ),
                          child: Text("23rd Oct 2000",style: TextStyle(fontSize:9.sp,color: Colors.black45 ),),
                        ),
                        Padding(
                          padding:EdgeInsets.only(bottom:.02.sw, ),
                          child: Text("Duration",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w700 ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom:.03.sw, ),
                          child: Text("5 Days / 4 Nights",style: TextStyle(fontSize:9.sp,color: Colors.black45 ),),
                        ),
                        Padding(
                          padding:EdgeInsets.only(bottom:.02.sw, ),
                          child: Text("Descover 7 World Heritags Sites in this tour.",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w700 ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom:.03.sw, ),
                          child: Text('''Fans of Mickey can v
isit Disneyland vskdfnv  rfenrqjen jr
vjq34n 34 3f34 f3 4 34 v4 v43 iu4 v45ivpi
ddddddddddddd
dddddddd
eeeeeeeeeeeeee
dddddddddddd
dddddddddddddddddddd
eeeeeeeeeeeeeeeeee
42 5v2i45v 2i45vi45iv 4i2 vi24 viu4;i5vi42v i45pi2
5piv 4fvkndavafqi akvergv asjefbe kje rbgeq jr q
e ewgkenqer''',style: TextStyle(fontSize:9.sp,color: Colors.black45 ),),
                        ),


                      ],
                    ),
                  )
                ],
              )
              ,
            )
          ],
        ),
      )
      ,
    );
  }

  // Future Selecctedcountry() async {
  //   setState(() {
  //     isloaded = true;
  //   });
  //   Response placesResponse =
  //   await get(Uri.parse("http://alcaptin.com/api/places"), headers: {
  //     "Authorization": "Bearer access_token",
  //   });
  //
  //   dynamic Jsondecode = jsonDecode(placesResponse.body);
  //
  //   if (placesResponse.statusCode == 200) {
  //     print(Jsondecode["message"]);
  //     //print(Converted)
  //     // Places Converted = Places.fromJson(Jsondecode);
  //   }
  //   setState(() {
  //     isloaded = false;
  //   });
  // }
}
