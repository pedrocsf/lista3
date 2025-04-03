import 'dart:io';

void main() {
  List<String> resultados = [];
  
  while (true) {
    List<int> entrada = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int m = entrada[0], n = entrada[1];
    
    if (m == 0 && n == 0) break;
    
    int soma = m + n;
    String resultado = soma.toString().replaceAll('0', '');
    resultados.add(resultado);
  }
  
  print(resultados.join('\n'));
}