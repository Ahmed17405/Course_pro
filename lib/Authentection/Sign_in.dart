import 'dart:convert';
import 'package:course_pro/HomePages/locationpage.dart';
import 'package:course_pro/api/LoginResponse.dart';
import 'package:flutter/material.dart';
import 'package:course_pro/Model/custom_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import '../HomePages/Nav_class/bnb_class.dart';
import 'Sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
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
                  height: .85.sw,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white30,
                            offset: Offset(0, -.018.sh),
                            blurRadius: 40,
                            spreadRadius: -.85.sw,
                            blurStyle: BlurStyle.inner),
                        BoxShadow(
                            color: Colors.white30,
                            offset: Offset(0, -.057.sh),
                            blurRadius: 40,
                            spreadRadius: -.80.sw,
                            blurStyle: BlurStyle.inner)
                      ],
                      color: customColor.white,
                      borderRadius: BorderRadius.circular(.07.sw)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 0.09.sw,bottom: .01.sw),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                      ),
                      Form(
                          key: _formKey,
                          child: Column(children: [Padding(
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
                          height: .04.sw,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: .1.sw),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter Valid Password";
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
                        ),],)),
                      Padding(
                        padding: EdgeInsets.all(0.04.sw),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.only(left: .45.sw),
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  color: customColor.blue, fontSize: 10.sp),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(.04.sw),
                        child:
                        isLoading?
                        Center(child: CircularProgressIndicator(
                        ))
                        :
                        Stack(
                          children: [
                            SizedBox(
                              height: .13.sw,
                              width: .74.sw,
                              child:
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                color: customColor.blue,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    login();
                                  }
                                },
                                child: Text(
                                  "Sign in",
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.27.sw,
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
                },
              child: Text("Don’t have an account? Sign up",style: TextStyle(color: customColor.white,fontSize: 9.sp),),),
              SizedBox(height: 20,)
            ],
            ),
          )),
    );
  }
  Future login() async {
    setState(() {
      isLoading = true;
    });

    Response loginResponse = await post(
        Uri.parse("http://alcaptin.com/api/login"),
        body: {
          "email": email,
          "password": password,
        });

    dynamic convertedJson = jsonDecode(loginResponse.body);

    if(loginResponse.statusCode == 200){
      LoginResponse userData = LoginResponse.fromJson(convertedJson);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> BottomNav()));

    }else{
      print(convertedJson["message"]);
    }


    setState(() {
      isLoading = false;
    });
  }

}
