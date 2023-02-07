
import 'package:flutter_project/labs/firstLab/fourthTask/model/Lesson.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/repo/HumanRepo.dart';

import '../data/LessonData.dart';
import '../model/Student.dart';

class StudentRepo extends HumanRepo<Student>{
  LessonData l = LessonData();

  StudentRepo(super.abstractData);

  List<Student> getStudentsWhoHasLesson(Lesson lesson){
    List<Student> returnStudents = List.empty(growable: true);

    abstractData.items.forEach((element) {element.lessonsWithMark.forEach((key, value) {if(key==lesson){ returnStudents.add(element);}});});

    return returnStudents;
  }

  bool studentHasLesson(Student student, Lesson lesson){
    if(abstractData.items.contains(student) &&
        abstractData.items.firstWhere((element) => element==student).lessonsWithMark.containsKey(lesson)){
      return true;
    }
    return false;
  }

  bool deleteLessonFromStudent(Lesson lesson, Student student){
    if(abstractData.items.contains(student)){
      abstractData.items.firstWhere((element) => element==student).lessonsWithMark.remove(lesson);
    }
    if(!studentHasLesson(student, lesson)){
      return true;
      // print("Student with fullName: ${student.fullName} and id: ${student.id} dropped lesson ${lesson.name}");
    }
    return false;
  }
  bool addNewLessonToStudent(Lesson lesson, Student student){
    if(abstractData.items.contains(student)){
      if(!studentHasLesson(student, lesson)){
        abstractData.items.firstWhere((element) => element==student).lessonsWithMark.putIfAbsent(lesson, () => 0);
        // print("Lesson ${lesson.name} added to student ${student.fullName}");
        return true;
      }
      // else{
      //   print("Student ${student.fullName} has lesson ${lesson.name} already");
      //   return false;
      // }
    }
    return false;

  }

  bool changeStudentsLessonGrade(Lesson lesson, double mark, Student student){
    if(abstractData.items.contains(student) && studentHasLesson(student, lesson)) {
      abstractData.items.firstWhere((element) => element==student).lessonsWithMark.update(lesson, (value) => mark);
      return true;
      // print("Grade $mark was given to student ${student.fullName} in the subject ${lesson.name} ");
    }
    return false;
  }

}