import 'package:course_pro/Authentection/Sign_in.dart';
import 'package:course_pro/Authentection/Sign_up.dart';
import 'package:course_pro/Model/custom_color.dart';
import 'package:course_pro/first_screens/first.dart';
import 'package:course_pro/first_screens/second.dart';
import 'package:course_pro/first_screens/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartScreens extends StatefulWidget {
  const StartScreens({Key? key}) : super(key: key);

  @override
  State<StartScreens> createState() => _StartScreensState();
}

class _StartScreensState extends State<StartScreens> {
  PageController _controller = PageController();
  bool isLastpage = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.white1,
      bottomSheet: isLastpage
          ? Container(
        color: customColor.white1,
              height: 70,
              child: Center(
                  child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => SignIn()));
                },
                child: Text(
                  "Let’s Go",
                  style: TextStyle(color: customColor.blue1, fontSize: 12.sp),
                ),
              )),
            )
          : Container(
              color: customColor.white1,
              padding: EdgeInsets.only(left: 40, right: 40),
              height: 70,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => SignIn()));
                    },
                    child: Text(
                      "SKIP",
                      style:
                          TextStyle(color: customColor.blue1, fontSize: 12.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: .215.sw),
                    child: Center(
                      child: SmoothPageIndicator(
                          onDotClicked: (i) {
                            _controller.animateToPage(i,
                                duration: Duration(microseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          count: 3,
                          controller: _controller,
                          effect: CustomizableEffect(
                              dotDecoration: DotDecoration(
                                  width: 10, color: Colors.black26),
                              activeDotDecoration: DotDecoration(
                                  width: 20, color: customColor.blue1))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: Duration(microseconds: 300),
                          curve: Curves.easeInOut);
                    },
                    child: Text(
                      "NEXT",
                      style:
                          TextStyle(color: customColor.blue1, fontSize: 12.sp),
                    ),
                  )
                ],
              ),
            ),
      body: Container(
        padding: EdgeInsets.only(bottom: .1.sw),
        child: PageView(
          onPageChanged: (i) {
            setState(() {
              isLastpage = i == 2;
            });
          },
          controller: _controller,
          children: [First(), Second(), Third()],
        ),
      ),
    );
  }
}
