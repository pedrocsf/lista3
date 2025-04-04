import 'dart:io';

void main() {
  int T = int.parse(stdin.readLineSync()!);
  List<String> results = [];
  
  for (int i = 0; i < T; i++) {
    List<int> cpf = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    
    int b1 = cpf.sublist(0, 9).asMap().entries.map((e) => e.value * (e.key + 1)).reduce((a, b) => a + b) % 11;

    if (b1 == 10) b1 = 0;

    int b2 = cpf.sublist(0, 9).asMap().entries.map((e) => e.value * (9 - e.key)).reduce((a, b) => a + b) % 11;

    if (b2 == 10) b2 = 0;

    results.add((b1 == cpf[9] && b2 == cpf[10]) ? "CPF valido" : "CPF invalido");
  }
  
  for (String result in results) {
    print(result);
  }
}
