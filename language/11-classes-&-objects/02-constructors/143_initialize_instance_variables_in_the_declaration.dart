/// Dart Classes & Objects: Constructors

/// Initialize the instance variables when you declare the variables.
class PointA {
  double x = 1.0;
  double y = 2.0;

  // The implicit default constructor sets these variables to (1.0,2.0)
  // PointA();

  @override
  String toString() {
    return 'PointA($x, $y)';
  }
}

void main() {
  var myPointA = PointA();
  print(myPointA);  // Prints: PointA(1.0, 2.0)
}
