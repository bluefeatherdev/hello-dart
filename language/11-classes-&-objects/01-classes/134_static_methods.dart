/// Dart Classes & Objects: Classes

/// Use the `static` keyword 
/// to implement class-wide variables and methods:
import 'dart:math';

class Point {
  double x, y;
  Point(this.x, this.y);

  /// Consider using [top-level functions], instead of static methods, 
  /// for common or widely used utilities and functionality.
  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }

  /// You can use static methods as compile-time constants. 
  /// For example, you can pass a static method as a parameter 
  /// to a constant constructor.
}

void main() {
  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(2.8 < distance && distance < 2.9);  // Prints: true
  print(distance);  // Prints: 2.8284271247461903
}
