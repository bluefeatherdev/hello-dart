/// Dart Keywords: [do]

/// A `do`-`while` loop evaluates the condition after the loop:
void doExample1() {
  int index = 0;
  List<int> myList = [1, 2, 3];
  do {
    print('myList[$index]: ${myList[index]}');
    index++;
  } while (index < myList.length);
}

void doExample2() {
  int i = 1;
  outerLoop: do {
    int j = 1;
    do {
      if (i == j) {
        i++;
        continue outerLoop;
      }
      print('i: $i, j: $j');
      j++;
    } while (j <= 3);
    i++;
  } while (i <= 3);
}

void main() { 
  doExample1(); // ...
  doExample2(); // ...
}
