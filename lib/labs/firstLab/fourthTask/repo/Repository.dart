import 'package:flutter_project/labs/firstLab/fourthTask/data/AbstractData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/model/BaseEntity.dart';

abstract class BaseRepository<T extends BaseEntityWithId>{
  
  late AbstractData<T> abstractData;

  BaseRepository(this.abstractData);

  T? getById(int id) {
    for(T t in abstractData.items){
      if(t.id==id){
        return t;
      }
    }
    return null;
  }
  List<T> getByIds(List ids){
    List<T> returnElems = List.empty(growable: true);
    for(int id in ids){
      returnElems.add(getById(id)!);
    }
    return returnElems;
  }
  bool isNewItemAdded(T t){
    if(abstractData.getItems().contains(t)){
      return true;
    }
    return false;
  }
  T addNew(T t){
    abstractData.items.add(t);
    if(isNewItemAdded(t)){
      return t;
    }
    throw Exception("Something went wrong");
  }
  void delete(T t){
    if(isNewItemAdded(t)){
      abstractData.getItems().remove(t);
    }
    else{
      throw Exception("This item doesn't exist");
    }
  }
  List<T> getAll(){
    return abstractData.getItems();
  }
}