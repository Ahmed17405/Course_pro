import 'dart:convert';
import 'package:course_pro/HomePages/country.dart';
import 'package:course_pro/api/Placess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:course_pro/Model/custom_color.dart';
import 'package:http/http.dart';
import 'Sidepage.dart';

class Tours extends StatefulWidget {
  const Tours({Key? key}) : super(key: key);

  @override
  State<Tours> createState() => _ToursState();
}

class _ToursState extends State<Tours> {
  bool? isloaded = false;
  @override
  void initState() {
    super.initState();
    tours();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.white1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customColor.white1,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: .06.sw,
                color: Colors.black54,
              ))
        ],
        title: Text(
          "TOURS",
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: MaterialButton(
            highlightColor: customColor.white,
            splashColor: customColor.white,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SidePage()));
            },
            child: Image.asset(
              "images/export/SideMenu.png",
              color: Colors.black87,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.3.sw,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: .03.sw, left: .06.sw),
                        child: Text(
                          "Popular Destination",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: customColor.blue,
                              fontSize: 19.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: .01.sw, left: .06.sw),
                        child: Text(
                          "10 Tours Avialable",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black45,
                              fontSize: 11.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: .05.sw,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: .26.sw,
                          child: Expanded(
                            child:
                            // isloaded!
                            //     ? const Center(
                            //         child: CircularProgressIndicator(),
                            //       )
                            //     :
                            ListView.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemBuilder:
                                        (context,index) {
                                      //InnerData? item = Places.data?.data?[index];
                                      return Padding(
                                        padding: EdgeInsets.only(left: .05.sw),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (_)=>Country()));
                                          },
                                          child: Container(
                                            width: .22.sw,
                                            height: .26.sw,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                BorderRadius.circular(.035.sw)),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    flex: 7,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                          Radius.circular(
                                                              .035.sw),
                                                          topRight:
                                                          Radius.circular(
                                                              .035.sw)),
                                                      child: Image.network(
                                                         //"${item?.images}"
                                                        "images/used1.jpg"
                                                         ,
                                                        width: double.infinity,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 5,
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            top: .035.sw,
                                                            left: .02.sw),
                                                        child: Text(
                                                          //"${item?.name}",
                                                          "Paris",
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                              FontWeight.w600),
                                                        )))
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: .08.sw,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Container(
                          child: Image.asset(
                            "images/ahmed1.jpg",
                            width: double.infinity,
                            height: .5.sw,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: .62.sw,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: .1.sw,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: .23.sw
                                    ),
                                    child: Card(
                                      child: Padding(
                                        padding: EdgeInsets.only(top: .04.sw,left: .03.sw,right:.03.sw ),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                          Text(
                                            "Holidays",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: .04.sw,
                                          ),
                                          Text(
                                            "Say yes to iconic snow Catamount,",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.5.sp),
                                          ),
                                          Text(
                                            "Hillsdale, New York!",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.5.sp),
                                          ),
                                          SizedBox(
                                              height: .02.sw,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Book your holiday package today",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 9.sp),
                                              ),
                                              SizedBox(
                                                width: 25,
                                              ),
                                              CircleAvatar(
                                                backgroundColor: customColor.blue,
                                                child: Icon(
                                                  Icons.arrow_forward_outlined,
                                                  size: .065.sw,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          )
                                        ]),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: .03.sw, left: .06.sw),
                        child: Text(
                          "Discover New Places",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: customColor.blue,
                              fontSize: 19.sp),
                        ),
                      ),
                      SizedBox(
                        height: 1.sw,
                        child:
                        // isloaded!
                        //     ? const Center(
                        //         child: CircularProgressIndicator(),
                        //       )
                        //     :
                        ListView.builder(
                                shrinkWrap: true,
                                itemCount: 5,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, index) =>
                                    Padding(
                                  padding: EdgeInsets.only(
                                      top: .03.sw, left: .06.sw),
                                  child: SizedBox(
                                    height: 1.sw,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                              width: .35.sw,
                                              height: .6.sw,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          .025.sw)),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              .025.sw),
                                                      child: Image.asset(
                                                        "images/used2.jpg",
                                                        fit: BoxFit.cover,
                                                        height: .6.sw,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: .47.sw,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(.04.sw),
                                                      child: Text(
                                                        "Eiffel Tower",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 11.sp),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ),
                                        SizedBox(
                                          height: .02.sw,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: .041.sw,
                                              color: Colors.orange[800],
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: .041.sw,
                                              color: Colors.orange[800],
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: .041.sw,
                                              color: Colors.orange[800],
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: .041.sw,
                                              color: Colors.orange[800],
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: .041.sw,
                                              color: Colors.orange[800],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: .02.sw,
                                        ),
                                        Text(
                                          "4.8 (512 Reviews)",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 9.sp),
                                        ),
                                        SizedBox(
                                          height: .02.sw,
                                        ),
                                        Text(
                                          "Paris",
                                          style: TextStyle(fontSize: 9.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future tours() async {
    setState(() {
      isloaded = true;
    });
    Response placesResponse =
        await get(Uri.parse("http://alcaptin.com/api/places"), headers: {
      "Authorization": "Bearer access_token",
    });

     dynamic Jsondecode = jsonDecode(placesResponse.body);

     if (placesResponse.statusCode == 200) {
       print(Jsondecode["message"]);
       //print(Converted);
       Places Converted = Places.fromJson(Jsondecode);
       Navigator.push(context, MaterialPageRoute(builder: (_) => Country()));
     }
    setState(() {
      isloaded = false;
    });
  }
}
