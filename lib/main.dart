import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kisaankart/screens/onboard_screen.dart';
import 'package:kisaankart/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
    Duration(
      seconds: 3,
    ),(){
      Navigator.pushReplacement(context,MaterialPageRoute(
        builder: (context)=>WelcomeScreen(),
      ));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Hero(
          tag:'logo',
            child: Image.asset('images/KisaanKart.png')),
      ),
    );
  }
}
