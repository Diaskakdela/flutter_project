import 'package:flutter_project/labs/firstLab/fourthTask/model/BaseEntity.dart';

abstract class Human extends BaseEntityWithId{

  String fullName;
  double weight;
  double height;
  DateTime birthDate;
  String address;

  Human(this.fullName, this.weight, this.height, this.birthDate, this.address):super();
}

mixin PrintInfo{
  String info = " ";
  void printInfo(){
    print(info);
  }
}