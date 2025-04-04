import 'dart:io';

void main() {
  int T = int.parse(stdin.readLineSync()!);
  List<int> results = [];
  
  for (int i = 0; i < T; i++) {
    List<String> inputs = stdin.readLineSync()!.split(' ');
    String A = inputs[0];
    String B = inputs[1];
    int operations = 0;
    
    for (int j = 0; j < A.length; j++) {
      int diff = (B.codeUnitAt(j) - A.codeUnitAt(j) + 26) % 26;
      operations += diff;
    }
    results.add(operations);
  }
  
  for (int result in results) {
    print(result);
  }
}