/// Dart Keywords: [class]

/// In Dart, the `class` keyword is used to define a class, 
/// which is a blueprint for creating objects. A class encapsulates 
/// data (fields) and behavior (methods) that objects of 
/// that class can have.
class Point {
  double? x;
  double? y;
  Point([this.x = null, this.y = null]);
}

void main() {
  var point = Point();
  point.x = 4;
  print(point.x == 4);  // true
  print(point.y == null); // true

  var point2 = Point(null, 5);
  print(point2.x == null);  // true
  print(point2.y == 5); // true
}
