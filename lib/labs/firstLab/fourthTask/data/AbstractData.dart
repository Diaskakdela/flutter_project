import 'package:flutter_project/labs/firstLab/fourthTask/model/BaseEntity.dart';

class AbstractData<T extends BaseEntityWithId>{
  late List<T> items;

  List<T> getItems(){
    return items;
  }
}