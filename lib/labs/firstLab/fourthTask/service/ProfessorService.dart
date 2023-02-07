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
    print("Student ${student.fullName} was deleted");
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
    if(!studentRepo.addNewLessonToStudent(lesson, student)){
      print("Student ${student.fullName} has lesson ${lesson.name} already");
    }
    print("Lesson ${lesson.name} added to student ${student.fullName}");
  }
  void deleteLessonFromStudent(Lesson lesson, Student student){
    if(studentRepo.deleteLessonFromStudent(lesson, student)){
      print("Student with fullName: ${student.fullName} and id: ${student.id} dropped lesson ${lesson.name}");
    }
    else{
      print("Lesson wasn't deleted");
    }
  }
  void changeStudentsLessonGrade(Lesson lesson, double mark, Student student){
    if(!studentRepo.changeStudentsLessonGrade(lesson, mark, student)){
      print("Smthg went wrong changeStudentsLessonGrade");
    }
    print("Grade $mark was given to student ${student.fullName} in the subject ${lesson.name} ");
  }
}