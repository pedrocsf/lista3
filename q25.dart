import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  List<String> results = [];

  for (int i = 0; i < N; i++) {
    String line = stdin.readLineSync()!.toLowerCase();
    Map<String, int> frequency = {};

    for (var char in line.runes) {
      String letter = String.fromCharCode(char);
      if (letter.contains(RegExp(r'[a-z]'))) {
        frequency[letter] = (frequency[letter] ?? 0) + 1;
      }
    }

    int maxFreq = frequency.values.fold(
      0,
      (prev, curr) => curr > prev ? curr : prev,
    );
    List<String> maxLetters =
        frequency.entries
            .where((entry) => entry.value == maxFreq)
            .map((entry) => entry.key)
            .toList()
          ..sort();

    results.add(maxLetters.join(''));
  }

  for (String result in results) {
    print(result);
  }
}
