import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  
  for (int caso = 0; caso < t; caso++) {
    List<int> anoes = [];
    
    for (int i = 0; i < 9; i++) {
      anoes.add(int.parse(stdin.readLineSync()!));
    }
    
    List<int> result = encontrarSeteAnoes(anoes);
    result.sort();
    
    for (int num in result) {
      print(num);
    }
  }
}

List<int> encontrarSeteAnoes(List<int> anoes) {
  int somaTotal = anoes.reduce((a, b) => a + b);
  int somaExcesso = somaTotal - 100;
  
  for (int i = 0; i < 8; i++) {
    for (int j = i + 1; j < 9; j++) {
      if (anoes[i] + anoes[j] == somaExcesso) {
        List<int> resultado = [];
        for (int k = 0; k < 9; k++) {
          if (k != i && k != j) {
            resultado.add(anoes[k]);
          }
        }
        return resultado;
      }
    }
  }
  
  return []; 
}