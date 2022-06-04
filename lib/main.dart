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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lox App',
      
      // home: const AppointmentSuccess()
      home: Onboarding(),
    );
  }
}

