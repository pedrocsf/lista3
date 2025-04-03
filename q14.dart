import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  Map<int, int> frequencia = {};
  List<int> numeros = [];
  
  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
    frequencia[num] = (frequencia[num] ?? 0) + 1;
  }
  
  int maxFreq = frequencia.values.reduce((a, b) => a > b ? a : b);
  int valorMaisFrequente = frequencia.entries
      .where((entry) => entry.value == maxFreq)
      .map((entry) => entry.key)
      .reduce((a, b) => a < b ? a : b);
  
  print(valorMaisFrequente);
  print(maxFreq);
}
