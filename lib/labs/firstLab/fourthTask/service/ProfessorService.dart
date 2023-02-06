import 'package:flutter_project/labs/firstLab/fourthTask/model/Student.dart';

import '../data/LessonData.dart';
import '../data/ProfessorsData.dart';
import '../data/StudentData.dart';
import '../model/Lesson.dart';
import '../repo/LessonRepo.dart';
import '../repo/ProfessorRepo.dart';
import '../repo/StudentRepo.dart';

class ProfessorService{
//Registration all data
  StudentData studentData = StudentData();
  LessonData lessonData = LessonData();
  ProfessorsData professorsData = ProfessorsData();

  late StudentRepo studentRepo;
  late LessonRepo lessonRepo;
  late ProfessorRepo professorRepo;

  ProfessorService(){
    studentRepo = StudentRepo(studentData);
    lessonRepo = LessonRepo(lessonData);
    professorRepo = ProfessorRepo(professorsData);
  }

  void addNewLesson(Lesson lesson){
    lessonRepo.addNew(lesson);
    print("New lesson ${lesson.name} with id = ${lesson.id} added");
  }
  void deleteLesson(Lesson lesson){
    lessonRepo.delete(lesson);
  }
  Lesson? findLessonById(int id){
    return lessonRepo.getById(id);
  }
  Lesson findLessonByName(String name){
    return lessonRepo.getByName(name);
  }
  List<Lesson> findAllLessons(){
    return lessonRepo.getAll();
  }

  void addNewStudent(Student student){
    studentRepo.addNew(student);
    print("New student ${student.fullName} with id = ${student.id} added");
  }
  void deleteStudent(Student student){
    studentRepo.delete(student);
  }
  Student? findStudentById(int id){
    return studentRepo.getById(id);
  }
  Student? findStudentByName(String name){
    return studentRepo.getByFullName(name);
  }
  List<Student> findAllStudentsWhoLearnLesson(Lesson lesson){
    return studentRepo.getStudentsWhoHasLesson(lesson);
  }
  void addNewLessonToStudent(Lesson lesson, Student student){
    studentRepo.addNewLessonToStudent(lesson, student);
  }
  void deleteLessonFromStudent(Lesson lesson, Student student){
    studentRepo.deleteLessonFromStudent(lesson, student);
  }
  void changeStudentsLessonGrade(Lesson lesson, double mark, Student student){
    studentRepo.changeStudentsLessonGrade(lesson, mark, student);
  }

}