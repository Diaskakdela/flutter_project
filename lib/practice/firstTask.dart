import 'dart:collection';
import 'dart:io';

void main(List<String> arguments) {

  var list = getAndFillList();

  print(list);

  print("Max elem = "+getMaxElem(list).toString());
  print("Min elem = "+getMinElem(list).toString());
}

List getAndFillList(){
  print("Please, add the length of array: ");
  int? length = int.parse(stdin.readLineSync()!);

  List list = ListQueue(length).toList();

  for(int i = 0; i < length; i++){
    print("Add value for "+ i.toString() + " element");
    list.add(int.parse(stdin.readLineSync()!));
  }

  return list;
}

int getMaxElem(List list){
  int max = list.first;

  for(int i in list){
    if(i>max){
      max = i;
    }
  }

  return max;
}

int getMinElem(List list){
  int min = list.first;

  for(int i in list){
    if(i<min){
      min = i;
    }
  }

  return min;
}