import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lox/ui/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding extends StatefulWidget {


  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
   SharedPreferences? sharedPrefs;

     @override
  void initState() {
    initializeSharedPrefs();
    super.initState();
  }

  initializeSharedPrefs() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () {
                               sharedPrefs!.setBool("onboarding", false);
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text('Skip',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal))),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                        child: Image.asset(
                      'assets/images/welcome.png',
                      fit: BoxFit.cover,
                      height: 300.h,
                    )),
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                        child: Text(
                      'Hi, There!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                        child: Text(
                      'This is Lox service app development\ntest',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ))
                  ],
                ),
              ),
            ));
  }
}
