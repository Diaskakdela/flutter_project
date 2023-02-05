import 'dart:math';

import 'package:flutter_project/labs/firstLab/fourthTask/model/Human.dart';

import 'Lesson.dart';

class Student extends Human{

  String discValue = "S";

  Student(String fullName, double weight, double height, DateTime birthDate, String address)
      : super(fullName, weight, height, birthDate, address);
}