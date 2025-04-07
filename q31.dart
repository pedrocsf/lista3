import 'dart:io';

void main() {
  while (true) {
    final n = int.parse(stdin.readLineSync()!);
    if (n == 0) break;
    final v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int m = 0;
    for (int i = 0; i < n; i++) {
      if (v[i] > m) {
        m = v[i];
      }
    }
    final vCount = List<int>.filled(m + 1, 0);
    final vOrd = List<int>.filled(n, 0);
    for (int i = 0; i < n; i++) {
      vCount[v[i]]++;
    }
    for (int i = 1; i <= m; i++) {
      vCount[i] += vCount[i - 1];
    }
    for (int i = n - 1; i >= 0; i--) {
      vOrd[vCount[v[i]] - 1] = v[i];
      vCount[v[i]]--;
    }
    for (int i = 0; i < n; i++) {
      v[i] = vOrd[i];
    }
    for (int i = 0; i < n; i++) {
      if (i > 0) {
        stdout.write(' ');
      }
      stdout.write(v[i]);
    }
    stdout.write('\n');
  }
}
