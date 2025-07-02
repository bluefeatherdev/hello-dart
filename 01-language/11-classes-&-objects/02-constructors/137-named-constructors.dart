/// Dart Classes & Objects: Constructors

/// Use a [[named constructor]] to implement 
/// multiple constructors for a class 
/// or to provide extra clarity:
const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  final double x;
  final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  Point(this.x, this.y);

  // Named constructor
  Point.origin() : x = xOrigin, y = yOrigin;

  /// A subclass doesn't inherit a superclass's named constructor. 
  /// To create a subclass with a named constructor 
  /// defined in the superclass, implement that constructor 
  /// in the subclass.
}

void main() {
  var myPoint = Point(1.5, 2.3);  // Generative constructor
  var myOrigin = Point.origin();  // Named constructor

  print('myPoint: (${myPoint.x}, ${myPoint.y})');
  // Prints: myPoint: (1.5, 2.3)
  print('myOrigin: (${myOrigin.x}, ${myOrigin.y})');
  // Prints: myOrigin: (0.0, 0.0)
}
