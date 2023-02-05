import 'dart:collection';

import 'IdGenerator.dart';

abstract class BaseEntityWithId{
  late int id;
  late String discValue;

  IdGenerator idGenerator = IdGenerator();

  BaseEntityWithId(){
    id = idGenerator.map[discValue]!;
    idGenerator.map.update(discValue, (value) => ++value);
  }
}