import 'dart:io';

import 'dart:math';

void main(){
  // print("Add Num: ");
  // first(stdin.readLineSync()!);

  // print("Add a: ");
  // int? a = int.parse(stdin.readLineSync()!);
  //
  // print("Add b: ");
  // int? b = int.parse(stdin.readLineSync()!);
  //
  // print("Add c: ");
  // int? c = int.parse(stdin.readLineSync()!);
  //
  // print("Add d: ");
  // int? d = int.parse(stdin.readLineSync()!);
  //
  // change(a, b, c, d);

  // print(funPow.call(2,3));


  print(funPow(2, 3));
}

void first(String num){
  if(num.length%2==0){
    int sum1 = 0;
    int sum2 = 0;
    for(int i = 0; i < num.length/2; i++){
      sum1+=int.parse(num[i]);
      sum2+=int.parse(num[i+num.length~/2]);
    }
    print("Sum of first half = "+sum1.toString());
    print("Sum of second half = "+sum2.toString());
    if(sum1==sum2){
      print("Num is lucky");
    }
    else{
      print("Num is unlucky");
    }
  }
  else{
    print("Num is odd");
  }
}

void change(int a, int b, int c, int d){
  print("a="+a.toString());
  print("b="+b.toString());
  print("c="+c.toString());
  print("d="+d.toString());

  int temp = a;
  a = b;
  b=c;
  c = d;
  d = temp;

  print("---------");

  print("a="+a.toString());
  print("b="+b.toString());
  print("c="+c.toString());
  print("d="+d.toString());
}


String convertFromIntToString(int num) {return num.toString();}

String Function(int) Func = (n) => convertFromIntToString(n);

int Function(int, int) funPow = (n, m) => pow(n, m).toInt();




