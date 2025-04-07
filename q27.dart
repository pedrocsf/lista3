import 'dart:io';
import 'dart:math';

String str_clean(String str, String clr) {
  Set<String> unwanted = clr.split('').toSet();
  return str.split('').where((c) => !unwanted.contains(c)).join();
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<List<double>> points = [];

  for (int i = 0; i < n; i++) {
    List<double> point = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    points.add(point);
  }

  for (int i = 0; i < n - 1; i++) {
    List<double> a = points[i];
    List<double> b = points[i + 1];
    double dx = b[0] - a[0];
    double dy = b[1] - a[1];
    double dz = b[2] - a[2];
    double maxAbs = [dx.abs(), dy.abs(), dz.abs()].reduce(max);
    print(maxAbs.toStringAsFixed(2));
  }
}
