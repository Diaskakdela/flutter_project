import 'package:flutter_project/labs/firstLab/fourthTask/model/Employee.dart';

class Professor extends Employee{

  String discValue = "P";

  Professor(super.salary, super.appointmentDate, super.workExp, super.fullName,
       super.weight, super.height, super.birthDate, super.address):super();
}