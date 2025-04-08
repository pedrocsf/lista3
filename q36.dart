import 'dart:io';

void main() {
  int q1 = int.parse(stdin.readLineSync()!);
  int q2 = int.parse(stdin.readLineSync()!);
  
  List<int> v1 = [];
  List<int> v2 = [];
  
  for (int i = 0; i < q1; i++) {
    v1.add(int.parse(stdin.readLineSync()!));
  }
  
  for (int i = 0; i < q2; i++) {
    v2.add(int.parse(stdin.readLineSync()!));
  }
  
  List<int> vr = [];
  int i = 0, j = 0;
  
  while (i < q1 && j < q2) {
    if (v1[i] <= v2[j]) {
      vr.add(v1[i]);
      i++;
    } else {
      vr.add(v2[j]);
      j++;
    }
  }
  
  while (i < q1) {
    vr.add(v1[i]);
    i++;
  }
  
  while (j < q2) {
    vr.add(v2[j]);
    j++;
  }
  
  for (int value in vr) {
    print(value);
  }
}