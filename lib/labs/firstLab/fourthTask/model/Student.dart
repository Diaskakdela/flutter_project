
import 'package:flutter_project/labs/firstLab/fourthTask/data/LessonData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/model/Human.dart';

import 'Lesson.dart';

class Student extends Human{
  String discValue = "S";
  Map<Lesson, double> lessonsWithMark = {};

  final LessonData _lessonData = LessonData();
  
  Student(String fullName, double weight, double height, DateTime birthDate, String address)
      : super(fullName, weight, height, birthDate, address){
    for(Lesson lesson in _lessonData.items){
      lessonsWithMark.addAll({lesson:0});
    }
  }
  
  void printData(){
    print("Student id = ${this.id}, name = ${this.fullName}, weight = ${this.weight}, height = ${this.height}, birthDate = ${this.birthDate}, address = ${this.address}");
  }
}