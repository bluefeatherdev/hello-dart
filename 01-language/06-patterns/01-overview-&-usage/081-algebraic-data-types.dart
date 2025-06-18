// Dart Patterns: Overview & usage
import 'dart:math' as math;

/// Object destructuring and switch cases are conducive 
/// to writing code in an [algebraic data type] style. 

/// Use this method when:
/// - You have a family of related types.
/// - You have an operation that needs specific behavior for each type.
/// - You want to group that behavior in one place instead of 
///   spreading it across all the different type definitions.
sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
  Square(length: var l) => l * l,
  Circle(radius: var r) => math.pi * r * r,
};

void main() {
  /// Instead of implementing the operation as an instance method 
  /// for every type, keep the operation's variations in a 
  /// single function that switches over the subtypes:
  final shapes = <Shape>[
    Square(4),
    Circle(3),
    Square(2.5),
    Circle(1)
  ];
  for (final shape in shapes) {
    final area = calculateArea(shape);
    print('$shape area: $area');
  }
}
