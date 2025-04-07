import 'dart:io';

String str_clean(String str, String clr) {
  Set<String> unwanted = clr.split('').toSet();
  return str.split('').where((c) => !unwanted.contains(c)).join();
}

void main() {
  String original = stdin.readLineSync()!;
  String clr = stdin.readLineSync()!;
  String cleaned = str_clean(original, clr);
  print(cleaned);
}