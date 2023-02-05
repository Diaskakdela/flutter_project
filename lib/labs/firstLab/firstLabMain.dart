import 'package:flutter_project/labs/firstLab/fourthTask/data/AbstractData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/data/LessonData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/data/ProfessorsData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/data/StudentData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/data/StudentsWithLessons.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/model/Lesson.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/repo/StudentRepo.dart';

import 'fourthTask/model/Professor.dart';
import 'fourthTask/model/Student.dart';
import 'fourthTask/repo/ProfessorRepo.dart';

void main(){
  StudentData studentData = StudentData();
  StudentsWithLessons studentsWithLessons = StudentsWithLessons();
  StudentRepo repo = StudentRepo(studentsWithLessons, studentData);

  print(studentData.items.first.id);

  repo.addNew(Student("Dias Ospanov",
      65, 180, DateTime(2002), "Aksay-4 81"));

  print(studentData.items.last.id);

  print(studentsWithLessons.studentsLessonMark);
  studentsWithLessons.studentsLessonMark.forEach((key, value) {value.forEach((key1, value1) {
    print(key1.name + value1.toString());});});
}