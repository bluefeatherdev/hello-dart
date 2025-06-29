// Dart Functions: Classes & objects

/// Objects have [members] consisting of functions and data 
/// ([methods] and [instance variables], respectively). 
/// When you call a method, you [invoke] it on an object: 
/// the method has access to that object's functions and data.
import 'dart:math';

class Point {
  final int x;
  final int y;
  Point(this.x, this.y);

  /// 
  /// ```dart
  /// double distanceTo(Point p) {
  ///   num dx = pow((p.x - this.x), 2);
  ///   num dy = pow((p.y - this.y), 2);
  ///   double d = sqrt(dx + dy);
  ///   return d;
  /// }
  /// ```
  
  /// 
  /// ```dart
  /// double distanceTo(Point p) {
  ///   var dx = p.x - this.x;
  ///   var dy = p.y - this.y;
  ///   return sqrt(dx * dx + dy * dy);
  /// }
  /// ```

  double distanceTo(Point p) {
    var dx = p.x - x;
    var dy = p.y - y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {  
  /// Use a dot (`.`) to refer to an instance variable or method:
  var p = Point(2, 2);
  
  // Get the value of y.
  assert(p.y == 2);
  print(p.y == 2);  // Prints: true

  /// Invoke `distanceTo()` on p.
  double distance = p.distanceTo(Point(4, 4));
  print(distance);  // Prints: 2.8284271247461903

  /// Use `?.` instead of `.` to avoid an exception 
  /// when the leftmost operand is null:
  
  // If p is non-null, set a variable equal to its y value.
  Point? nullableP = null;
  var a = nullableP?.y;
  print(nullableP); // Prints: null
  print(a); // Prints: null
}
