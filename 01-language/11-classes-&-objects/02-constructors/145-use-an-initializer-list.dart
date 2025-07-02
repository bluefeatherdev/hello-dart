/// Dart Classes & Objects: Constructors

/// Before the constructor body runs, 
/// you can initialize instance variables. 
/// Separate initializers with commas. 
import 'dart:math';

class Point {
  final double x;
  final double y;

  // Initializer list sets instance variables before
  // the constructor body runs.

  /// The right-hand side of an initializer list can't access `this`.

  /// [Named constructors] with an [initializer list]
  Point.fromJson(Map<String, double> json) 
      : x = json['x']!, 
        y = json['y']! {
    print('In Point.fromJson(): ($x, $y)');
  }

  /// To validate inputs during development, 
  /// use `assert` in the initializer list.
  Point.withAssert(this.x, this.y) : assert(x >= 0) {
    print('In Point.withAssert(): ($x, $y)');
  }
}

/// Initializer lists help set up `final` fields.
/// The following example initializes 
/// three `final` fields in an initializer list:
class Point2 {
  final double x;
  final double y;
  final double distanceFromOrigin;

  /// [Generative constructor] with an [initializer list]
  Point2(double x, double y)
    : x = x,
      y = y,
      distanceFromOrigin = sqrt(x * x + y * y);
}

void main() {
  // ...
  var json = {'x': 4.0, 'y': 5.5};
  var p1 = Point.fromJson(json);  // Prints: In Point.fromJson(): (4.0, 5.5)
  var p2 = Point.withAssert(3.0, 7.0);  // Prints: In Point.withAssert(): (3.0, 7.0)
  print(p1);  // Prints: Instance of 'Point'
  print(p2);  // Prints: Instance of 'Point'

  // ...
  var p3 = Point2(2, 3);
  print(p3.distanceFromOrigin); // Prints: 3.605551275463989
}
