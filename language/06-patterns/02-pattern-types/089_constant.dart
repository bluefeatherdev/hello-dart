// Dart Patterns: Pattern types
void main() {
  /// Constant patterns match when the value is equal to the constant:
  /// `123`, `null`, `'string'`, `math.pi`, `SomeClass.constant`, 
  /// `const Thing(1, 2)`, `const (1 + 2)`
  var number = 1;
  switch (number) {
    // Matches if 1 == number.
    case 1:
      print('number: $number'); // Prints: number: 1
  }

  /// You can use simple literals and references 
  /// to named constants directly as constant patterns:
  /// - Number literals (`123`, `45.56`)
  /// - Boolean literals (`true`)
  /// - String literals (`'string'`)
  /// - Named constants (`someConstant`, `math.pi`, `double.infinity`)
  /// - Constant constructors (`const Point(0, 0)`)
  /// - Constant collection literals (`const []`, `const {1, 2}`)
  
  /// More complex constant expressions must be parenthesized 
  /// and prefixed with `const` (`const (1 + 2)`):
  
  // List or map pattern:
  const a = 'hello';
  const b = 123;
  var list1 = [a, b];
  switch (list1) {
    case [a, b]:
      print('list elements: $a & $b');
      break;
  }

  // List or map literal:
  const x = 'hello';
  const y = 123;
  const list2 = [x, y];
  switch (list2) {
    case const [x, y]:
      print('list elements: $x & $y');
      break;
  }
}
