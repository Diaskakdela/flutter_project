import 'dart:io';

import 'package:flutter_project/labs/firstLab/fourthTask/model/Lesson.dart';

import 'package:flutter_project/labs/firstLab/fourthTask/service/ProfessorService.dart';

import 'fourthTask/model/Student.dart';

void main(){
  ProfessorService professorService = ProfessorService();
  // professorService.lessonData.printData();
  // professorService.addNewLesson(Lesson("Algorithms"));
  // professorService.lessonData.printData();
  professorService.studentData.printData();

  professorService.addNewStudent(Student("Roman Kutkin", 65, 180, DateTime(2002), "Aksay-4 81"));

  professorService.studentData.printData();
  professorService.addNewLesson(Lesson("Algorithms"));
  professorService.addNewLessonToStudent(professorService.findLessonByName("Algorithms"), professorService.studentRepo.getById(2)!);

  professorService.studentData.printData();

  professorService.changeStudentsLessonGrade(professorService.findLessonByName("Algorithms"), 5, professorService.studentRepo.getById(2)!);
  professorService.studentData.printData();

  professorService.deleteLessonFromStudent(professorService.findLessonByName("Math"), professorService.studentRepo.getById(2)!);
  professorService.studentData.printData();

  print(Process.runSync("clear", [], runInShell: true).stdout);
}


