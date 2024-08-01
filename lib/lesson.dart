import 'dart:io';

void main() {
  // b = 20
  // a = 10
  int c = sum(20, 10);
  int cd = sumWithNaming(b: 10, a: 20);
  print(c);
}

int sum(int a, int b){
  return a + b;
}

int sumWithNaming({required int a, required int b, int c = 0}){
  return a + b + c;
}
