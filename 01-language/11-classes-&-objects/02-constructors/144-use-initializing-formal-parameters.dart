/// Dart Classes & Objects: Constructors

/// To simplify the common pattern of assigning a constructor argument 
/// to an instance variable, Dart has [initializing formal parameters].

/// Initializing formal parameters also allow you 
/// to initialize non-nullable or `final` instance variables. 
/// Both of these types of variables require initialization 
/// or a default value.
class PointB {
  final double x;
  final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  PointB(this.x, this.y);

  // Initializing formal parameters can also be optional.
  PointB.optional([this.x = 0.0, this.y = 0.0]);

  @override
  String toString() {
    return 'PointB($x, $y)';
  }
}

/// Private fields can't be used as named initializing formals.
/// ```dart
/// class PointB {
///   // ...
/// 
///   PointB.namedPrivate({required double x, required double y})
///     : _x = x,
///       _y = y;
/// 
///   // ...
/// }
/// ```  

/// This also works with named variables.
class PointC {
  double x; // must be set in constructor
  double y; // must be set in constructor

  // Generative constructor with initializing formal parameters
  // with default values
  PointC.named({this.x = 1.0, this.y = 1.0});

  @override
  String toString() {
    return 'PointC.named($x, $y)';
  }
}

/// The constructor parameters could be set as nullable and not be initialized.
class PointD {
  double? x; // null if not set in constructor
  double? y; // null if not set in constructor

  // Generative constructor with initializing formal parameters
  PointD(this.x, this.y);

  @override
  String toString() {
    return 'PointD($x, $y)';
  }
}

void main() {
  // ...
  var myPointB = PointB(1.0, 2.0);
  print(myPointB);  // Prints: PointB(1.0, 2.0)

  var myOtherPointB = PointB.optional();
  print(myOtherPointB);  // Prints: PointB(0.0, 0.0)

  var myOtherOtherPointB = PointB.optional(3.0, 4.0);
  print(myOtherOtherPointB);  // Prints: PointB(3.0, 4.0)

  // ...
  final myPointC = PointC.named();
  print(myPointC);  // Prints: PointC.named(1.0, 1.0)

  final myOtherPointC = PointC.named(y: 5.0);
  print(myOtherPointC);  // Prints: PointC.named(1.0, 5.0)

  final myOtherOtherPointC = PointC.named(x: 2.0, y: 3.0);
  print(myOtherOtherPointC);  // Prints: PointC.named(2.0, 3.0)

  // ...
  final myPointD = PointD(null, null);
  print(myPointD);  // Prints: PointD(null, null)

  final myOtherPointD = PointD(1.0, 1.0);
  print(myOtherPointD);  // Prints: PointD(1.0, 1.0)
}
