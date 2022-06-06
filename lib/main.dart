import 'package:flutter/material.dart';
import 'package:lox/ui/appointment/appointment.dart';
import 'package:lox/ui/appointment/appointment_list.dart';
import 'package:lox/ui/appointment/appointment_success.dart';
import 'package:lox/ui/login.dart';
import 'package:lox/ui/onboarding.dart';
import 'package:lox/ui/payment.dart';
import 'package:lox/ui/profile.dart';
import 'package:lox/ui/register.dart';
import 'package:lox/ui/search.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool moveToOnboarding = false;
  bool moveToHome = true;

  void load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      moveToHome = prefs.getBool('home') ?? false;
      moveToOnboarding = (prefs.getBool('onboarding') ?? true);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lox App',

        // home: const AppointmentSuccess()
        home: moveToOnboarding ? Login() : Onboarding());
  }
}
