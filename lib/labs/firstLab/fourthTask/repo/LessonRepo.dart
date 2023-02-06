import 'package:flutter_project/labs/firstLab/fourthTask/repo/Repository.dart';

import '../model/Lesson.dart';

class LessonRepo extends BaseRepository<Lesson>{
  LessonRepo(super.abstractData);

  Lesson getByName(String name) {
    for(Lesson lesson in abstractData.items){
      if(lesson.name==name){
        return lesson;
      }
    }
    throw Exception("No elem with name = $name");
  }
}