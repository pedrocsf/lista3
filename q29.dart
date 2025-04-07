import 'dart:io';

void main() {
  while (true) {
    final input = stdin.readLineSync()!.split(' ');
    final n = int.parse(input[0]);
    final d = int.parse(input[1]);
    
    if (n == 0 && d == 0) break;
    
    final num = stdin.readLineSync()!;
    final digitosParaManter = d;
    final digitosParaRemover = n - d;
    
    final resultado = encontrarMaiorPremio(num, digitosParaRemover);
    print(resultado);
  }
}

String encontrarMaiorPremio(String numero, int digitosParaRemover) {
  if (digitosParaRemover == 0) return numero;
  
  List<String> pilha = [];
  
  for (int i = 0; i < numero.length; i++) {
    final digito = numero[i];
    
    while (pilha.isNotEmpty && 
           pilha.last.compareTo(digito) < 0 && 
           digitosParaRemover > 0) {
      pilha.removeLast();
      digitosParaRemover--;
    }
    
    pilha.add(digito);
  }
  
  while (digitosParaRemover > 0) {
    pilha.removeLast();
    digitosParaRemover--;
  }
  
  return pilha.join();
}