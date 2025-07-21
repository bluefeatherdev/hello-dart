/// Dart Classes & Objects: Methods

/// Instance methods on objects can access instance variables and `this`. 
/// The `distanceTo()` method in the following sample is an example 
/// of an instance method:
import 'dart:math';

class Point {
  final double x;
  final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  Point(this.x, this.y);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var p1 = Point(1, 5);
  var p2 = Point(2, 3);
  print(p1.distanceTo(p2)); // Prints: 2.23606797749979
}
