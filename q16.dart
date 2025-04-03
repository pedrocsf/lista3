import 'dart:io';

String? obterPrefixo(int n, String s) {
  if (n > s.length) {
    return s;
  }
  return s.substring(0, n);
}

void main() {
  int casos = int.parse(stdin.readLineSync()!);
  List<String> resultados = [];
  
  for (int i = 0; i < casos; i++) {
    List<String> entrada = stdin.readLineSync()!.split(' ');
    int n = int.parse(entrada[0]);
    String s = entrada.sublist(1).join(' ');
    
    String? prefixo = obterPrefixo(n, s);
    if (prefixo != null) {
      resultados.add(prefixo);
    }
  }
  
  print(resultados.join('\n'));
}
