import 'dart:io';

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    bool upper = true;
    String result = '';
    for (int i = 0; i < (line?.length ?? 0); i++) {
      String char = line![i];
      if (char == ' ') {
        result += char;
      } else {
        result += upper ? char.toUpperCase() : char.toLowerCase();
        upper = !upper;
      }
    }
    print(result);
  }
}
