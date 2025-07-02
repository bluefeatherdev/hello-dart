/// Dart Classes & Objects: Constructors

/// If you don't declare a constructor, 
/// Dart uses the [default constructor]. 
/// The default constructor is 
/// a [generative constructor] without arguments or name:
class Point {
  /// Instance variables to hold the coordinates of the point.
  double? x;
  double? y;
}

void main() {
  var myPoint = Point();
  myPoint.x = 3.5;
  myPoint.y = 3.5;

  print(Point); // Prints: Point
  print(myPoint); // Prints: Instance of 'Point'
  print(myPoint.x); // Prints: 3.5
  print(myPoint.y); // Prints: 3.5
}
