import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync()!.split(' ');
  int N = int.parse(inputs[0]);
  int K = int.parse(inputs[1]);
  List<int> arrivalTimes = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  
  List<int> onTimeStudents = arrivalTimes.where((t) => t <= 0).toList();
  
  if (onTimeStudents.length < K) {
    print("SIM\n");
  } else {
    print("NAO\n");
    print(onTimeStudents.reversed.join(' '));
  }
}
