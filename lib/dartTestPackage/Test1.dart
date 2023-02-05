import 'dart:io';


void main(List<String> args) {

  print("Input your name: ");
  String? name = stdin.readLineSync()!;

  print("Input your age: ");
  int? age = int.parse(stdin.readLineSync()!);

  print("Input your physics mark: ");
  int? physicsMark = int.parse(stdin.readLineSync()!);

  print("Input your math mark: ");
  int? mathMark = int.parse(stdin.readLineSync()!);

  print("Input your english mark: ");
  int? englishMark = int.parse(stdin.readLineSync()!);

  Student semite = Student(name, age, physicsMark, mathMark, englishMark);

  semite.out();
}

class Student {
  String name = "";
  int age;
  int physics;
  int math;
  int english;

  Student(this.name, this.age, this.physics, this.math, this.english);

  void out(){
    print("Name =$name\nAge = $age\nAverage mark = ${getAverage()}");
  }

  double getAverage(){
    return (physics+math+english)/3;
  }


}