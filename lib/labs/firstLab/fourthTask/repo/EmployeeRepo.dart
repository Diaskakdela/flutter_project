import 'package:flutter_project/labs/firstLab/fourthTask/model/Employee.dart';
import 'package:flutter_project/labs/firstLab/fourthTask/repo/HumanRepo.dart';

abstract class EmployeeRepo<T extends Employee> extends HumanRepo<T>{
  EmployeeRepo(super.abstractData);

  List<T> getAllWithSalaryMoreThan(int salary){
    List<T> foundElems = List.empty(growable: true);
    for(T t in abstractData.items){
      if(t.salary>salary){
        foundElems.add(t);
      }
    }
    return foundElems;
  }
}