// Dart Control flow: Branches

// Point class:
class Point {
  // Point attributes:
  final num x;
  final num y;
  // Point constructor:
  Point(this.x, this.y);
  // Point to string:
  @override
  String toString() => 'Point(x: $x, y: $y)';
}

void main() {
  /// Dart supports `if` statements with optional `else` clauses. 
  /// The condition in parentheses after `if` must be an expression 
  /// that evaluates to a [boolean]:
  /// ```dart
  /// if (isRaining()) {
  ///   you.bringRainCoat();
  /// } else if (isSnowing()) {
  ///   you.wearJacket();
  /// } else {
  ///   car.putTopDown();
  /// }
  /// ```
  
  /// Dart `if` statements support `case` clauses followed by a pattern:
  var pair = [1, 2];
  if (pair case [int x, int y]) print(Point(x, y));

  /// Otherwise, control flow progresses to the `else` branch 
  /// to execute, if there is one: 
  if (pair case [int x, int y]) {
    print('Was coordinate array $x, $y');
  } else {
    throw FormatException('Invalid coordinates.');
  }
}
