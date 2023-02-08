import 'package:flutter/cupertino.dart';

class BasicProvider extends ChangeNotifier{
 String name = "flutter tutorials";
 int studentCount = 10;
 double averageMark = 35.6;
 num availableDays = 5.5;
 List<String> studentNames = ["a","b","v"];
 Map<String,String>mapVariables = {
   "name" : "a",
 };
 //STUDENT PASS PROGRAM
TextEditingController studentCon = TextEditingController();
String result = '';
int count = 0;
List<String> actorsNames = ["a","b","c"];
int listCount = 0;

 resultStudent(value) {
  print(studentCon.toString());
  if (int.parse(studentCon.text) > 90) {
   result = "A+";
   print(result);
   notifyListeners();
  } else if (int.parse(studentCon.text) >= 80 && int.parse(studentCon.text) <= 79) {
   result = "A";
  } else if(int.parse(studentCon.text) >= 70 && int.parse(studentCon.text) <= 69) {
   result = "B+";
  }
  else{
   result = "STUDENT FAILED";
  }
 }
 //WHILE
print10(){
  while(count<=10){
   count = count +1;
   print(count);
  }
}
 notifyListeners();
 printList(){
  print(actorsNames.length);
  while(listCount < actorsNames.length){
   print(actorsNames[listCount]);
   listCount = listCount + 1;
   notifyListeners();
  }
  notifyListeners();
 }
}