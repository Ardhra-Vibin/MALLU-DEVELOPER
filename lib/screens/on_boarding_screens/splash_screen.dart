import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_developer/screens/home_screens/basics.dart';
import 'package:flutter_developer/screens/home_screens/student_pass.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = 'splash_screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Timer(const Duration(seconds: 3),(){
      Navigator.pushNamedAndRemoveUntil(context, StudentPassScreen.routeName, (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
