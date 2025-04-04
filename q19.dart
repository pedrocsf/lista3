import 'dart:io';

void main() {
  List<String> inputs = [];
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null || line.isEmpty) break;
    inputs.add(line);
  }
  
  for (var line in inputs) {
    List<String> words = line.split(' ');
    int count = 0;
    String? prev;
    int streak = 0;
    
    for (var word in words) {
      String first = word[0].toLowerCase();
      if (first == prev) {
        if (streak == 0) count++;
        streak++;
      } else {
        streak = 0;
      }
      prev = first;
    }
    print(count);
  }
}
