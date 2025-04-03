import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> w = List.from(v.reversed);
  
  int maiorV = v.reduce((a, b) => a > b ? a : b);
  int menorW = w.reduce((a, b) => a < b ? a : b);
  
  print(v.join(' '));
  print(w.join(' '));
  print(maiorV);
  print(menorW);
}
