/// Dart Keywords: [if]

/// Dart supports `if` statements with optional `else` clauses. 
/// The condition in parentheses after if must be an expression 
/// that evaluates to a boolean.

// ignore_for_file: dead_code

void main() { 
  /// 1. [Standard if Statement]:
  int number = 23;
  if (number == 0) {
    print('$number is zero');
  } else if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');  // 23 is odd
  }

  /// 2. [Conditional Expressions]:
  bool? isCold = true;
  var outfit = isCold ? 'Jacket' : 'T-shirt';
  print(outfit);  // Jacket

  /// 3. [`if-case` Statement (Dart ≥ 3.0)]:
  final pair = [16, 23];
  if (pair case [int x, int y]) {
    print('Coordinates: $x, $y'); // Coordinates: 16, 23
  } else {
    throw FormatException('Invalid coordinates');
  }

  /// 4. [`if-case` with Guard Clause]:
  final shape = Square(3);
  if (shape case Square(side: var s) when s > 0) {
    print('Valid square with side $s'); // Valid square with side 3.0
  }

  /// 5. [Inside Collection Literals (Control Flow Collections)]:
  bool isHungry = true;
  var items = [
    'apple',
    if (isHungry) 'sandwich',
    'water',
  ];
  print(items); // [apple, sandwich, water]
}

/// 4. [`if-case` with Guard Clause]:
abstract class Shape {
  double get area;
}

class Square extends Shape {
  final double side;
  Square(this.side);

  @override
  double get area => side * side;
}
