import 'package:flutter/material.dart';
import 'package:flutter_developer/screens/home_screens/1_to_10.dart';
import 'package:flutter_developer/screens/home_screens/basics.dart';
import 'package:flutter_developer/screens/home_screens/data_from_list.dart';
import 'package:flutter_developer/screens/home_screens/for_loop/nested_for_loop.dart';
import 'package:flutter_developer/screens/home_screens/for_loop/print_1_to_10.dart';
import 'package:flutter_developer/screens/home_screens/functions_or_methods/print_function.dart';
import 'package:flutter_developer/screens/home_screens/student_pass.dart';
import 'package:flutter_developer/screens/on_boarding_screens/splash_screen.dart';

Map<String, WidgetBuilder> routes(){
  return {
    SplashScreen.routeName : (ctx) => const SplashScreen(),
    BasicScreen.routeName : (ctx) => const BasicScreen(),
    StudentPassScreen.routeName : (ctx) => const StudentPassScreen(),
    PrintOneToTen.routeName : (ctx) => const PrintOneToTen(),
    FetchDataFromList.routeName : (ctx) => const FetchDataFromList(),
    PrintingFuction.routeName : (ctx) => const PrintingFuction(),
    NestedForLoop.routeName : (ctx) => const NestedForLoop(),
    PrintFunction.routeName : (ctx) => const PrintFunction(),

  };
}