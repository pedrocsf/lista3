import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  Set<int> uniqueNumbers = {};
  
  for (int i = 0; i < N; i++) {
    uniqueNumbers.add(int.parse(stdin.readLineSync()!));
  }
  
  for (int number in uniqueNumbers) {
    print(number);
  }
}
