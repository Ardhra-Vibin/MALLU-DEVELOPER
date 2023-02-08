import 'package:flutter/material.dart';
import 'package:flutter_developer/provider/providers.dart';
import 'package:flutter_developer/routes/routes.dart';
import 'package:flutter_developer/screens/on_boarding_screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),debugShowCheckedModeBanner: false,
        routes: routes(),
        home: const SplashScreen(),
      ),
    );
  }
}

