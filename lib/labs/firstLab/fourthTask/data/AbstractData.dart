import 'package:flutter_project/labs/firstLab/fourthTask/model/BaseEntity.dart';

abstract class AbstractData<T extends BaseEntityWithId>{
  late List<T> items;

  List<T> getItems(){
    return items;
  }
}