import 'package:flutter_project/labs/firstLab/fourthTask/repo/Repository.dart';

import '../model/Human.dart';

abstract class HumanRepo<T extends Human> extends BaseRepository<T>{

  HumanRepo(super.abstractData);

  T? getByFullName(String fullName){
    for(T t in abstractData.items){
      if(t.fullName==fullName){
        return t;
      }
    }
    return null;
  }

  List<T> getAllHumanWithWeight(double weight){
    List<T> foundElems = List.empty(growable: true);
    for(T t in abstractData.items){
      if(t.weight==weight){
        foundElems.add(t);
      }
    }
    return foundElems;
  }

  List<T> getAllHumanWithHeight(double height){
    List<T> foundElems = List.empty(growable: true);
    for(T t in abstractData.items){
      if(t.height==height){
        foundElems.add(t);
      }
    }
    return foundElems;
  }
}