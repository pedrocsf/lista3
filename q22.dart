import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  
  Map<int, int> freq = {};
  for (int num in numbers) {
    freq[num] = (freq[num] ?? 0) + 1;
  }
  
  int uniqueCount = freq.values.where((count) => count == 1).length;
  print("$uniqueCount\n");
}