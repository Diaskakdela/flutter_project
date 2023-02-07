import 'package:flutter_project/labs/firstLab/fourthTask/data/PrintableData.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/model/BaseEntity.dart';

abstract class AbstractData<T extends BaseEntityWithId> implements PrintableData{
  late List<T> items;

  List<T> getItems(){
    return items;
  }
}