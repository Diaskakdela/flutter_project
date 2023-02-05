import 'package:flutter_project/labs/firstLab/fourthTask/model/Human.dart';

class Employee extends Human{
  int salary;
  DateTime appointmentDate;
  int workExp;

  Employee(this.salary, this.appointmentDate, this.workExp,
      String fullName, double weight, double height, DateTime birthDate, String address)
      : super(fullName, weight, height, birthDate, address);

}