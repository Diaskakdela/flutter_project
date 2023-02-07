import 'package:flutter_project/labs/firstLab/fourthTask/data/AbstractData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/data/PrintableData.dart';

import '../model/Student.dart';

class StudentData extends AbstractData<Student>{

  List<Student> items = List.of({Student("Dias Ospanov",
       65, 180, DateTime(2002), "Aksay-4 81")});

  static final StudentData _singleton = StudentData._internal();

  factory StudentData() {
    return _singleton;
  }

  StudentData._internal();

  @override
  void printData() {
    print("__________________________________");
    print("All Student data:");
    for(Student student in items){
      print("Student with id = ${student.id}, name = ${student.fullName}");
      student.lessonsWithMark.forEach((key, value) {
        print("${key.name} - $value");
      });
      print("------------");
    }
    print("__________________________________");
  }
}