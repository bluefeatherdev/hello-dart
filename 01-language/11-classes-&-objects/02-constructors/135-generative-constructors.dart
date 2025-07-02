/// Dart Classes & Objects: Constructors

/// To instantiate a class, use a [generative constructor].
class Point {
  /// Instance variables to hold the coordinates of the point.
  double x;
  double y;

  /// [Generative constructor] with initializing formal parameters:
  Point(this.x, this.y);
}

void main() {
  var myPoint = Point(2, 3);
  print(Point); // Prints: Point
  print(myPoint); // Prints: Instance of 'Point'
  print(myPoint.x); // Prints: 2.0
  print(myPoint.y); // Prints: 3.0
}
