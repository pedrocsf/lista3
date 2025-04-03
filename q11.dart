import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> notas = [];
  
  for (int i = 0; i < n; i++) {
    notas.add(int.parse(stdin.readLineSync()!));
  }
  
  int ultimaNota = notas.last;
  int frequenciaUltimaNota = notas.where((nota) => nota == ultimaNota).length;
  int maiorNota = notas.reduce((a, b) => a > b ? a : b);
  int indiceMaiorNota = notas.indexOf(maiorNota);
  
  print("Nota $ultimaNota, $frequenciaUltimaNota vezes");
  print("Nota $maiorNota, indice $indiceMaiorNota");
}