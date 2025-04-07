import 'dart:io';

void main() {
  List<int> dezenasSorteadas = stdin.readLineSync()!.split(' ').map((s) => int.parse(s)).toList();
  int n = int.parse(stdin.readLineSync()!);
  int acertadoresSena = 0;
  int acertadoresQuina = 0;
  int acertadoresQuadra = 0;

  for (int i = 0; i < n; i++) {
    List<int> aposta = stdin.readLineSync()!.split(' ').map((s) => int.parse(s)).toList();
    int acertos = 0;
    for (int dezena in aposta) {
      if (dezenasSorteadas.contains(dezena)) {
        acertos++;
      }
    }
    if (acertos == 6) {
      acertadoresSena++;
    } else if (acertos == 5) {
      acertadoresQuina++;
    } else if (acertos == 4) {
      acertadoresQuadra++;
    }
  }

  if (acertadoresSena > 0) {
    print("Houve $acertadoresSena acertador(es) da sena");
  } else {
    print("Nao houve acertador para sena");
  }

  if (acertadoresQuina > 0) {
    print("Houve $acertadoresQuina acertador(es) da quina");
  } else {
    print("Nao houve acertador para quina");
  }

  if (acertadoresQuadra > 0) {
    print("Houve $acertadoresQuadra acertador(es) da quadra");
  } else {
    print("Nao houve acertador para quadra");
  }
}
