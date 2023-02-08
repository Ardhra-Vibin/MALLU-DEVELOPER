import 'package:flutter/material.dart';
import 'package:flutter_developer/screens/home_screens/basics.dart';
import 'package:flutter_developer/screens/home_screens/student_pass.dart';
import 'package:flutter_developer/screens/on_boarding_screens/splash_screen.dart';

Map<String, WidgetBuilder> routes(){
  return {
    SplashScreen.routeName : (ctx) => const SplashScreen(),
    BasicScreen.routeName : (ctx) => const BasicScreen(),
    StudentPassScreen.routeName : (ctx) => const StudentPassScreen()
  };
}