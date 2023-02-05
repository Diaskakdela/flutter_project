import 'dart:ffi';

import 'package:flutter_project/labs/firstLab/fourthTask/model/Lesson.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/repo/HumanRepo.dart';

import '../data/LessonData.dart';
import '../data/StudentsWithLessons.dart';
import '../model/Student.dart';

class StudentRepo extends HumanRepo<Student>{
  StudentsWithLessons studentsWithLessons;
  LessonData l = LessonData();


  StudentRepo(this.studentsWithLessons, super.abstractData);

  List<Student> getStudentsWhoHasLesson(Lesson lesson){
    List<int> ids = List.empty(growable: true);
    studentsWithLessons.studentsLessonMark.forEach((key, value) {
      value.forEach((keyLesson, valueLesson) {
        if(keyLesson.id==lesson.id){
          ids.add(key.id);
        }
      });
    });
    return getByIds(ids);
  }
  
  @override
  Student addNew(Student t) {
    if(!studentsWithLessons.studentsLessonMark.containsKey(t)){
      Map<Lesson, double> lessonsWithMark = {};
      for(Lesson lesson in l.items){
        lessonsWithMark.putIfAbsent(lesson, () => 0);
      }

      studentsWithLessons.studentsLessonMark.putIfAbsent(t, () => lessonsWithMark);
    }
    return super.addNew(t);
  }
}