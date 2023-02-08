import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_developer/screens/home_screens/1_to_10.dart';
import 'package:flutter_developer/screens/home_screens/basics.dart';
import 'package:flutter_developer/screens/home_screens/data_from_list.dart';
import 'package:flutter_developer/screens/home_screens/for_loop/nested_for_loop.dart';
import 'package:flutter_developer/screens/home_screens/for_loop/print_1_to_10.dart';
import 'package:flutter_developer/screens/home_screens/functions_or_methods/print_function.dart';
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
      Navigator.pushNamedAndRemoveUntil(context, PrintFunction.routeName, (route) => false);
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
