import 'package:flutter/material.dart';
import 'package:flutter_developer/provider/basics_provider.dart';
import 'package:provider/provider.dart';

class StudentPassScreen extends StatelessWidget {
  const StudentPassScreen({Key? key}) : super(key: key);
  static String routeName = "student_pass_screen";

  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Report"),
      ),
      body: Consumer<BasicProvider>(builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Enter student mark"),
                  SizedBox(
                    width: w / 2,
                    child: TextFormField(

                      controller: provider.studentCon,
                      onChanged: (value){
                        provider.resultStudent(value);
                        // provider.studentCon.text = value;
                        // provider.studentCon.selection = TextSelection.fromPosition(TextPosition(offset: provider.studentCon.text.length));
                      } ,
                      decoration: InputDecoration(

                          contentPadding: EdgeInsets.zero,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
              //  height: 50,
                onPressed: () {
                  provider.resultStudent(provider.studentCon);
                  print(provider.studentCon.text);
                },
                color: Colors.green,
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)) ,
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 15,
              ),
              Text("RESULT"),
              Text(provider.result)
            ],
          ),
        );
      }),
    );
  }
}
