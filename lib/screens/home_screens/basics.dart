import 'package:flutter/material.dart';
import 'package:flutter_developer/provider/basics_provider.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);
  static String routeName = "basic_screen";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Basic"),
      ),
      body: Consumer<BasicProvider>(

        builder: (context, provider,child) {


          return Column(
            children: [
              Text(provider.name),
              Text(provider.studentCount.toString()),
              Text(provider.averageMark.toString()),
              Text(provider.availableDays.toString()),
              Text(provider.studentNames.toString()),
            ],
          );
        }
      ),
    );
  }
}
