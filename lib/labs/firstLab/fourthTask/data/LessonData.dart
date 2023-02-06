import 'package:flutter_project/labs/firstLab/fourthTask/data/AbstractData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/data/PrintableData.dart';

import '../model/Lesson.dart';

class LessonData extends AbstractData<Lesson> implements PrintableData{

  static final LessonData _singleton = LessonData._internal();

  List<Lesson> items = List.of({Lesson("Math"), Lesson("Physics"), Lesson("English")});

  factory LessonData() {
    return _singleton;
  }

  LessonData._internal();

  @override
  void printData() {
    print("__________________________________");
    print("Lessons:");
    items.forEach((element) {print("Lesson name = ${element.name} with id = ${element.id}");});
    print("__________________________________");
  }
}