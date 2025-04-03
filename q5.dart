import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(v.join(' '));
}