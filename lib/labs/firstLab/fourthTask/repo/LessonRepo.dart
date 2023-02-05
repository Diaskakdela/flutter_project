import 'package:flutter_project/labs/firstLab/fourthTask/repo/Repository.dart';

import '../model/Lesson.dart';

class LessonRepo extends BaseRepository<Lesson>{
  LessonRepo(super.abstractData);

  Lesson getByName(String name) {
    Iterable<Lesson> elems = abstractData.getItems();
    for(int i = 0; i<elems.length; i++){
      if(elems.elementAt(i).name==name){
        return elems.elementAt(i);
      }
    }
    throw Exception("No elem with name = $name");
  }
}