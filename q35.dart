import 'dart:io';

void main() {
  int ta;
  int tb;
  
  do {
    ta = int.parse(stdin.readLineSync()!);
  } while (ta < 1 || ta > 100);
  
  do {
    tb = int.parse(stdin.readLineSync()!);
  } while (tb < 1 || tb > 100);
  
  Set<int> conjuntoA = {};

  while (conjuntoA.length < ta) {
    String linha = stdin.readLineSync()!;
    List<String> valores = linha.split(' ');
    
    for (String valor in valores) {
      if (valor.trim().isNotEmpty) {
        try {
          int elemento = int.parse(valor);
          conjuntoA.add(elemento);

          if (conjuntoA.length >= ta) {
            break;
          }
        } catch (e) {

        }
      }
    }
  }
  
  Set<int> conjuntoB = {};
  

  while (conjuntoB.length < tb) {
    String linha = stdin.readLineSync()!;
    List<String> valores = linha.split(' ');
    
    for (String valor in valores) {
      if (valor.trim().isNotEmpty) {
        try {
          int elemento = int.parse(valor);
          conjuntoB.add(elemento);
          

          if (conjuntoB.length >= tb) {
            break;
          }
        } catch (e) {

        }
      }
    }
  }
  
  Set<int> uniao = {...conjuntoA, ...conjuntoB};
  Set<int> intersecao = {...conjuntoA}..retainAll(conjuntoB);

  List<int> uniaoOrdenada = uniao.toList()..sort();
  List<int> intersecaoOrdenada = intersecao.toList()..sort();

  String uniaoString = "(${uniaoOrdenada.join(',')})";
  String intersecaoString = "(${intersecaoOrdenada.join(',')})";
  
  print(uniaoString);
  print(intersecaoString);
}