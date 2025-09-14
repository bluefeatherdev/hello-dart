/// Dart Keywords: [for]

/// In Dart, the `for` keyword is used exclusively for loop constructs, 
/// and it appears in several distinct forms. Here's a comprehensive 
/// breakdown of all its usages:
void main() { 
  /// 1. [Classic for loop]:
  for (var i = 0; i < 5; i++) {
    print('iteration $i');  // ...
  }

  /// 2. [for-in loop]:
  List<String> myList = ['a', 'b', 'c'];
  for (var item in myList) {
    print(item);  // ...
  }

  /// 3. [Labeled for loops]:
  outerLoop: for (var i = 0; i < 4; i++) {
    for (var j = 0; j < 4; j++) {
      print('i: $i, j: $j');  // ...
      if (i == 2 && j == 3) break outerLoop;
    }
  }
}
