import 'dart:io';

void main() {
  List<String> resultados = [];

  while (true) {
    String? entrada = stdin.readLineSync();
    int n;
    if (entrada != null && entrada.isNotEmpty) {
      n = int.parse(entrada);
      resultados.add(n.toRadixString(2));
    } else {
      break;
    }
  }

  print(resultados.join('\n'));
}
