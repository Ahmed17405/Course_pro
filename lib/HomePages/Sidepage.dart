import 'package:course_pro/HomePages/Nav_class/bnb_class.dart';
import 'package:course_pro/HomePages/locationpage.dart';
import 'package:course_pro/Model/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

import 'Profile_page.dart';

class SidePage extends StatefulWidget {
  const SidePage({Key? key}) : super(key: key);

  @override
  State<SidePage> createState() => _SidePageState();
}

class _SidePageState extends State<SidePage>
{

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.white1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customColor.white1,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              size: 40,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: .05.sw,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child:ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child:
                      Image.asset("images/negan1.jpg",fit: BoxFit.fill,),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 8),
                  child: Text(
                    "Ahmed Yasser",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                ),
                Text("Ahmed22889911@Gmail.com",
                    style: TextStyle(color: Colors.black26, fontSize: 16)),
                SizedBox(
                  height: .05.sw,
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.notifications_rounded,
                        color: Colors.white,
                      )),
                  title: Row(
                    children: [
                      Text(
                        "  Notification",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " 04",
                        style: TextStyle(
                            color: Colors.black26, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.blue[300],
                      child: Icon(
                        Icons.airplanemode_on,
                        color: Colors.white,
                      )),
                  title: Text(
                    "  Tours",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.purple[300],
                      child: Icon(
                        Icons.place,
                        color: Colors.white,
                      )),
                  title: Text(
                    "  Location",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.blue[800],
                      child: Icon(
                        Icons.language_sharp,
                        color: Colors.white,
                      )),
                  title: Text(
                    "  Language",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.group,
                        color: Colors.white,
                      )),
                  title: Text(
                    "  Invite Friends",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(
                  indent: .06.sw,
                  endIndent: .06.sw,
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.yellow[700],
                      child: Icon(
                        Icons.headset_mic_sharp,
                        color: Colors.white,
                      )),
                  title: Text(
                    "  Help Center",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.green[400],
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      )),
                  title: Text(
                    "  Settings",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.black38,
                      child: Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                      )),
                  title: Text(
                    "  Log Out",
                    style:
                    TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
