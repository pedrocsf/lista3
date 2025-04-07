import 'dart:io';
import 'dart:math';

void main() {
  final entrada = stdin.readLineSync()!;

  final partes = entrada.split(';');
  if (partes.length != 2) {
    print("FORMATO INVALIDO!");
    return;
  }
  
  final stringA = partes[0].toLowerCase();
  final stringB = partes[1].toLowerCase();
  

  final vetorA = calcularVetorFrequencia(stringA);
  final vetorB = calcularVetorFrequencia(stringB);

  final distancia = calcularDistancia(vetorA, vetorB);
  

  print(formatarVetor(vetorA));
  print(formatarVetor(vetorB));
  print(distancia.toStringAsFixed(2));
}

List<int> calcularVetorFrequencia(String texto) {
  final frequencia = List<int>.filled(5, 0);
  
  for (int i = 0; i < texto.length; i++) {
    final char = texto[i];
    if (char == 'a') {
      frequencia[0]++;
    } else if (char == 'e') {
      frequencia[1]++;
    } else if (char == 'i') {
      frequencia[2]++;
    } else if (char == 'o') {
      frequencia[3]++;
    } else if (char == 'u') {
      frequencia[4]++;
    }
  }
  
  return frequencia;
}

double calcularDistancia(List<int> vetorA, List<int> vetorB) {
  double somaDosQuadrados = 0;
  
  for (int i = 0; i < 5; i++) {
    final diferenca = vetorA[i] - vetorB[i];
    somaDosQuadrados += diferenca * diferenca;
  }
  
  return sqrt(somaDosQuadrados);
}

String formatarVetor(List<int> vetor) {
  return "(${vetor.join(',')})";
}