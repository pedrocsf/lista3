import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  
  List<int> pares = v.where((num) => num.isEven).toList();
  print('${pares.join(' ')} ${pares.length}');
}