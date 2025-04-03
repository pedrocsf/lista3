import 'dart:io';
import 'dart:math';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  List<String> resultados = [];
  
  for (int i = 0; i < t; i++) {
    int n = int.parse(stdin.readLineSync()!);
    List<int> numeros = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    
    int menorDistancia = 2000;
    int comparacoes = n * n;
    
    for (int j = 0; j < n; j++) {
      for (int k = j + 1; k < n; k++) {
        int distancia = (numeros[j] - numeros[k]).abs();
        menorDistancia = min(menorDistancia, distancia);
      }
    }
    
    resultados.add('$menorDistancia $comparacoes');
  }
  
  print(resultados.join('\n'));
}