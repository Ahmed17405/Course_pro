
import 'package:course_pro/HomePages/Tours.dart';
import 'package:course_pro/HomePages/locationpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-item.dart';
import 'package:course_pro/Model/custom_color.dart';
import '../Profile_page.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 2,
      length: 5,
      vsync: this,
    );

  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Locations",
        labels: const ["Home", "Favourite","Locations", "MyTrip", "Profile"],
        icons: const [Icons.home_outlined, Icons.favorite_border,Icons.badge_outlined, Icons.calendar_today, Icons.person_outline_rounded],
        tabSize: .15.sw,
        tabBarHeight: .15.sw,
        textStyle: TextStyle(
          fontSize: 10.sp,
          color: customColor.white,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.black54,
        tabIconSize: .09.sw,
        tabIconSelectedSize: .1.sw,
        tabSelectedColor: customColor.blue,
        tabIconSelectedColor: Colors.white,
        tabBarColor:customColor.white,
        onTabItemSelected: (int value) {
          setState(() {
            _tabController.index = value;
          });
        },
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _tabController,
        children: [
          Tours(),
          Center(
            child: Text("Favourite"),
          ),
          Location(),
          Center(
            child: Text("MyTrip",),
          ),
          Profile(),



        ],
      ),
    );
  }
}
