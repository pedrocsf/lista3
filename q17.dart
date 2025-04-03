import 'dart:io';

int encontrarIndice(String c, String s) {
  return s.indexOf(c);
}

void main() {
  int casos = int.parse(stdin.readLineSync()!);
  List<String> resultados = [];
  
  for (int i = 0; i < casos; i++) {
    List<String> entrada = stdin.readLineSync()!.split(' ');
    String c = entrada[0];
    String s = entrada.sublist(1).join(' ');
    
    int indice = encontrarIndice(c, s);
    if (indice != -1) {
      resultados.add("Caractere $c encontrado no indice $indice da string.");
    } else {
      resultados.add("Caractere $c nao encontrado.");
    }
  }
  
  print(resultados.join('\n'));
}