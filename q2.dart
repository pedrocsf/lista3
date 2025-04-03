import 'dart:io';

void main() {
  int n;
  do {
    n = int.parse(stdin.readLineSync()!);
  } while (n < 1 || n > 1000);
  
  List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int k = int.parse(stdin.readLineSync()!);
  
  int count = v.where((num) => num >= k).length;
  print('$count');
}