import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> letrasList = [];
  List<int> vogaisList = [];
  List<int> consoantesList = [];

  for (int i = 0; i < n; i++) {
    String linha = stdin.readLineSync()!;
    int letras = linha.replaceAll(RegExp(r'[^a-zA-Z]'), '').length;
    int vogais = linha.replaceAll(RegExp(r'[^aeiouAEIOU]'), '').length;
    int consoantes = letras - vogais;
    letrasList.add(letras);
    vogaisList.add(vogais);
    consoantesList.add(consoantes);
  }
  for (int i = 0; i < n; i++) {
    print("Letras = ${letrasList[i]}");
    print("Vogais = ${vogaisList[i]}");
    print("Consoantes = ${consoantesList[i]}");
  }
}
