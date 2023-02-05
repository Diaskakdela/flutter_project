
import '../model/Lesson.dart';
import '../model/Student.dart';

class StudentsWithLessons{

  Map<Student, Map<Lesson, double>> studentsLessonMark = {};

  static final StudentsWithLessons _singleton = StudentsWithLessons._internal();

  factory StudentsWithLessons() {
    return _singleton;
  }

  StudentsWithLessons._internal();
}