import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!); 
  List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  if (n != v.length) {
    print('Tamanho do vetor diferente do tamanho informado');
    return;
  }
  Set<int> conjuntoV = v.toSet();
  int m = int.parse(stdin.readLineSync()!);

  List<int> num=[];
  for (int i = 0; i < m; i++) {
    num.add(int.parse(stdin.readLineSync()!));
  }
  for (int i = 0; i < m; i++) {
    if (conjuntoV.contains(num[i])) {
      print('ACHEI');
    } else {
      print('NAO ACHEI');
    }
  }
}

