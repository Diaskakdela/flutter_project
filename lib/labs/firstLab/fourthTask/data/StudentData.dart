import 'package:flutter_project/labs/firstLab/fourthTask/data/AbstractData.dart';

import '../model/Student.dart';

class StudentData extends AbstractData<Student>{
  List<Student> items = List.of({Student("Dias Ospanov",
       65, 180, DateTime(2002), "Aksay-4 81")});

  static final StudentData _singleton = StudentData._internal();

  factory StudentData() {
    return _singleton;
  }

  StudentData._internal();
}