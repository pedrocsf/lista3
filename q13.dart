import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> numeros = [];
  
  for (int i = 0; i < n; i++) {
    numeros.add(int.parse(stdin.readLineSync()!));
  }
  
  numeros.sort();
  
  for (int num in numeros) {
    print(num);
  }
}