import 'dart:collection';

import 'BaseEntity.dart';

class IdGenerator{
  static final IdGenerator _singleton = IdGenerator._internal();

  factory IdGenerator() {
    return _singleton;
  }

  IdGenerator._internal();

  Map<String, int> map = {"S":1, "P":1, "L":1};
}