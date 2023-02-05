import 'package:flutter_project/labs/firstLab/fourthTask/data/AbstractData.dart';

import '../model/Lesson.dart';

class LessonData extends AbstractData<Lesson>{

  static final LessonData _singleton = LessonData._internal();

  List<Lesson> items = List.of({Lesson("Math"), Lesson("Physics"), Lesson("English")});

  factory LessonData() {
    return _singleton;
  }

  LessonData._internal();
}