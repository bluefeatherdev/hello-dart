
/// Dart Keywords: [new]

/// The `new` keyword is used to explicitly instantiate a class. 
/// However, Dart has evolved to make `new` [optional], and in modern 
/// idiomatic Dart, it's rarely used unless needed for clarity or 
/// legacy compatibility.

// ignore_for_file: deprecated_new_in_comment_reference

import 'dart:math';

/// 1. [Explicit Object Instantiation]:
class User {
  final String name;
  User(this.name);

  @override
  String toString() => 'I\'m $name';
}

/// 2. [With Named Constructors]:
class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  Point.origin() : x = 0, y = 0;

  @override
  String toString() => 'x: $x, y: $y';
}

/// 4. [Inside Factory Constructors (for clarity)]:
abstract class Shape {
  double get area;

  factory Shape.circle(double radius) {
    return new Circle(radius);
  }
} 

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;

  @override
  String toString() =>
    'Circle(radius: $radius, area: ${area.toStringAsFixed(2)})';
}

void main() { 
  /// 1. [Explicit Object Instantiation]:
  final user = new User('Jesús');
  print(user);  // I'm Jesús

  /// 2. [With Named Constructors]:
  final point = new Point.origin();
  print(point); // x: 0.0, y: 0.0

  /// 3. [With Generics]:
  final list = new List<String>.filled(3, '*');
  print(list);  // [*, *, *]

  /// 4. [Inside Factory Constructors (for clarity)]:
  final circle = Shape.circle(3.0);
  print(circle);  // Circle(radius: 3.0, area: 28.27)
}
