/// Dart Classes & Objects: Constructors

/// A constructor might redirect to another constructor 
/// in the same class. A redirecting constructor has an empty body. 
/// The constructor uses `this` instead of the class name after a colon (`:`).
class Point {
  double x, y;

  // The main constructor for this class.
  Point(this.x, this.y);

  // Delegates to the main constructor.
  Point.alongXAxis(double x) : this(x, 0);
}

void main() {
  var myPoint = Point.alongXAxis(5);
  print('myPoint: (${myPoint.x}, ${myPoint.y})');
  // Prints: myPoint: (5.0, 0.0)
}
