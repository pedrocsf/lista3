import 'dart:io';

void main() {
  int casos = int.parse(stdin.readLineSync()!);
  List<String> resultados = [];
  
  for (int i = 0; i < casos; i++) {
    List<int> entrada = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int B = entrada[0];
    int E = entrada[1];
    
    String crescente = List.generate(E - B + 1, (index) => (B + index).toString()).join();
    String espelho = crescente + crescente.split('').reversed.join();
    
    resultados.add(espelho);
  }
  
  print(resultados.join('\n'));
}
