import 'dart:math';

class Student{
  String name = "Student";
  int age = 0;
  Map<Lesson, double> progress = {};

  Student(this.name, this.age);

  String get humanName{
    return name;
  }
  void set humanName(String name){
    this.name=name;
  }
  int get humanAge{
    return age;
  }
  void set humanAge(int age){
    this.age=age;
  }
  void setStudentProgress(Lesson lesson, double grade){
    progress.addEntries({lesson:grade}.entries);
  }
  void printStudentProgress(){
    print(progress);
    print("Average = ${getAverageGrade()}");
  }
  double getAverageGrade(){
    double average = 0;
    if(progress.isNotEmpty) {
      progress.forEach((key, value) { average+=value; });
    }
    return average/3;
  }
}

abstract class Lesson{
  String name="Lesson";

  String get lesson_name{
    return name;
  }
}

class Math extends Lesson{
  Math(){
    this.name="Math";
  }

}
class English extends Lesson{
  English(){
    this.name="English";
  }
}
class Biology extends Lesson{
  Biology(){
    this.name="Biology";
  }
}

void main(){
  Lesson mathLesson = Math();
  Lesson englishLesson = English();
  Lesson biologyLesson = Biology();

  List<Lesson> lessons = List.of({mathLesson, englishLesson, biologyLesson});

  Student student = Student("Dias", 20);

  for(Lesson lesson in lessons){
    student.setStudentProgress(lesson, Random().nextDouble()*100);
  }
  student.printStudentProgress();


}
