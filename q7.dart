import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> out=[];
  for (int i = 0; i < n; i++) {
    String palavra = stdin.readLineSync()!;

    if (palavra.length == 3) {
      if ((palavra[0] == 'o' && palavra[1] == 'n') ||
          (palavra[0] == 'o' && palavra[2] == 'e') ||
          (palavra[1] == 'n' && palavra[2] == 'e')) {
        out.add(1);
      } else if ((palavra[0] == 't' && palavra[1] == 'w') ||
                 (palavra[0] == 't' && palavra[2] == 'o') ||
                 (palavra[1] == 'w' && palavra[2] == 'o')) {
        out.add(2);
      }
    } else if (palavra.length == 5) {
      int count = 0;
      String three = "three";
      for (int j = 0; j < 5; j++) {
        if (palavra[j] != three[j]) {
          count++;
        }
      }
      if (count <= 1) {
        out.add(3);
      }
    }
  }
  for(int j=0;j<out.length;j++){
    if(j==out.length-1){
      print(out[j]);
    }else{
      print(out[j]);
    }
  }

}
