import 'package:flutter_project/labs/firstLab/fourthTask/model/BaseEntity.dart';

import 'IdGenerator.dart';

class Lesson extends BaseEntityWithId{
  String name;
  String discValue = "L";


  Lesson(this.name):super();
}