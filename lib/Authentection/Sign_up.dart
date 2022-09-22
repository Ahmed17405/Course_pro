import 'dart:convert';
import 'package:course_pro/HomePages/Nav_class/bnb_class.dart';
import 'package:course_pro/HomePages/locationpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:course_pro/Model/custom_color.dart';
import 'package:http/http.dart';

import '../api/SignupResponse.dart';
import 'Sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool value = false;
  bool isLoading = false;
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [customColor.blue, customColor.purple],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 0.1.sh,
              ),
              Image.asset("images/export/logowhite.png"),
              SizedBox(
                height: 0.18.sw,
              ),
              Padding(
                padding: EdgeInsets.only(left: .05.sw, right: .05.sw),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white30,
                            offset: Offset(0, -.036.sh),
                            blurRadius: 40,
                            spreadRadius: -.04.sw,
                            blurStyle: BlurStyle.inner),
                        BoxShadow(
                            color: Colors.white30,
                            offset: Offset(0, -.075.sh),
                            blurRadius: 40,
                            spreadRadius: -.09.sw,
                            blurStyle: BlurStyle.inner)
                      ],
                      color: customColor.white,
                      borderRadius: BorderRadius.circular(.07.sw)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 0.09.sw, bottom: .01.sw),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                      ),
                      Form(
                          key: _formKey,
                          child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: .1.sw),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  hintStyle: TextStyle(fontSize: 9.sp)),
                            ),
                          ),
                          SizedBox(
                            height: .03.sw,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: .1.sw),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !value.contains("@")) {
                                  return "Enter Valid Email";
                                }
                                return null;
                              },
                              onSaved: (value) {
                                setState(() {
                                  email = value!;
                                });
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(fontSize: 9.sp)),
                            ),
                          ),
                          SizedBox(
                            height: .03.sw,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: .1.sw),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Password";
                                }
                                return null;
                              },
                              onSaved: (value) {
                                setState(() {
                                  password = value!;
                                });
                              },
                              obscureText: true,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(fontSize: 9.sp)),
                            ),
                          ),
                          SizedBox(
                            height: .03.sw,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: .1.sw),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(fontSize: 9.sp)),
                            ),
                          ),
                        ],
                      )),
                      Padding(
                        padding: EdgeInsets.only(left: 0.06.sw),
                        child: Row(
                          children: [
                            Checkbox(
                                activeColor: customColor.blue,
                                value: value,
                                onChanged: (changed) {
                                  setState(() {
                                    value = changed!;
                                  });
                                }),
                            Text(
                              "I agree the ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 9.sp),
                            ),
                            Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  color: customColor.blue, fontSize: 9.sp),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: .03.sw,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: .04.sw),
                        child:
                        isLoading?Center(child: CircularProgressIndicator(),):
                        Stack(
                          children: [
                            Container(
                              height: .13.sw,
                              width: .74.sw,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                color: customColor.blue,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    SignUp();
                                  }

                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(color: customColor.white),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: .13.sw,
                                width: .13.sw,
                                decoration: BoxDecoration(
                                    color: customColor.blue1,
                                    borderRadius: BorderRadius.circular(100)),
                                child: Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 27,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: .05.sw,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.03.sw,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(.05.sw),
                    child: Image.asset("images/export/Facebook.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(.05.sw),
                    child: Image.asset("images/export/Google.png"),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignIn()));
                },
                child: Text(
                  "Already have an account? Login",
                  style: TextStyle(color: customColor.white, fontSize: 9.sp),
                ),
              )
            ]),
          )),
    );
  }

  Future SignUp() async {
    setState(() {
      isLoading = true;
    });

    Response registerResponse = await post(
        Uri.parse("http://alcaptin.com/api/register"),
        body: {
          "first_name":"Ahmed",
          "last_name":"elshora",
          "age":"28",
          "gender":"Male",
          "email": email,
          "password": password,

        });

    var convertedJson = jsonDecode(registerResponse.body);

    if(registerResponse.statusCode == 200){
      Register userData = Register.fromJson(convertedJson);
      Navigator.push(context, MaterialPageRoute(builder: (_)=> BottomNav()));

    }


    setState(() {
      isLoading = false;
    });
  }
}
