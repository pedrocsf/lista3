import 'dart:io';

String criptografar(String texto) {
  String primeiraPassada = texto.split('').map((char) {
    if (RegExp(r'[a-zA-Z]').hasMatch(char)) {
      return String.fromCharCode(char.codeUnitAt(0) + 3);
    }
    return char;
  }).join('');
  
  String segundaPassada = primeiraPassada.split('').reversed.join('');
  
  int metade = (segundaPassada.length / 2).floor();
  String terceiraPassada = segundaPassada.substring(0, metade) +
      segundaPassada.substring(metade).split('').map((char) {
        return String.fromCharCode(char.codeUnitAt(0) - 1);
      }).join('');
  
  return terceiraPassada;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<String> resultados = [];
  
  for (int i = 0; i < n; i++) {
    String linha = stdin.readLineSync()!;
    resultados.add(criptografar(linha));
  }
  
  print(resultados.join('\n'));
}
