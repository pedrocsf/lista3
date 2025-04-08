import 'dart:io';

void main() {

  int ta = 0;
  while (ta < 1 || ta > 100) {
    String? input = stdin.readLineSync();
    if (input != null) {
      ta = int.parse(input);
    }
  }
  

  int tb = 0;
  while (tb < 1 || tb > 100) {
    String? input = stdin.readLineSync();
    if (input != null) {
      tb = int.parse(input);
    }
  }
  

  Set<int> setA = {};
  while (setA.length < ta) {
    String? line = stdin.readLineSync();
    if (line != null) {
      List<String> values = line.split(' ');
      for (String value in values) {
        if (value.trim().isNotEmpty) {
          int element = int.parse(value);
          if (!setA.contains(element) && setA.length < ta) {
            setA.add(element);
          }
        }
      }
    }
  }
  
  Set<int> setB = {};
  while (setB.length < tb) {
    String? line = stdin.readLineSync();
    if (line != null) {
      List<String> values = line.split(' ');
      for (String value in values) {
        if (value.trim().isNotEmpty) {
          int element = int.parse(value);
          if (!setB.contains(element) && setB.length < tb) {
            setB.add(element);
          }
        }
      }
    }
  }
  
 
  Set<int> union = setA.union(setB);
  Set<int> intersection = setA.intersection(setB);
  

  String unionStr = "(${union.join(',')})";
  String intersectionStr = "(${intersection.join(',')})";
  
  print(unionStr);
  print(intersectionStr);
}