import 'package:course_pro/first_screens/first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Tours.dart';
import 'firstscreen.dart';
void main() {

    runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(200, 600),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: TextTheme(
              headline1: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.w600,color: Colors.black),
              headline2: TextStyle(fontSize: 12.sp,color: Colors.black54),


            )
          ),
          home: child,
        );
      },
      child:splashScreens (),
    );
  }
}
