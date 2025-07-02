/// Dart Classes & Objects: Classes

// Point class:
class Point {
  // Point attributes
  final int x;
  final int y;

  // Point constructor
  Point(this.x, this.y);

  // Point toString
  @override
  String toString() {
    return 'x: $x, y: $y';
  }

  // Point fromJson
  Point.fromJson(Map<String, int> json)
    : x = json['x'] ?? 0,
      y = json['y'] ?? 0;
}

// Constant constructors example:
class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final int x, y;

  const ImmutablePoint(this.x, this.y);

  @override
  String toString() {
    return 'x: $x, y: $y';
  }
}

void main() {  
  /// You can create an object using a [constructor]. 
  /// Constructor names can be either `ClassName` or `ClassName.identifier`. 
  /// For example, the following code creates `Point` objects 
  /// using the `Point()` and `Point.fromJson()` constructors:
  var p1 = Point(2, 2);
  var p2 = Point.fromJson({'x': 1, 'y': 2});
  print(p1);  // Prints: x: 2, y: 2
  print(p2);  // Prints: x: 1, y: 2

  /// The following code has the same effect, 
  /// but uses the optional `new` keyword before the constructor name:
  var p3 = new Point(2, 2);
  var p4 = new Point.fromJson({'x': 1, 'y': 2});
  print(p3);  // Prints: x: 2, y: 2
  print(p4);  // Prints: x: 1, y: 2

  /// Some classes provide [constant constructors]. 
  /// To create a compile-time constant using a constant constructor, 
  /// put the `const` keyword before the constructor name:
  var p5 = const ImmutablePoint(2, 2);
  print(p5);  // Prints: x: 2, y: 2

  /// Constructing two identical compile-time constants 
  /// results in a single, canonical instance:
  var p6 = const ImmutablePoint(1, 1);
  var p7 = const ImmutablePoint(1, 1);
  print(identical(p6, p7)); // Prints: true
  print(identical(p1, p3)); // Prints: false


  /// Within a [constant context], 
  /// you can omit the `const` before a constructor or literal. 
  /// For example, look at this code, which creates a const map:
  
  // Lots of const keywords here.
  const pointAndLine = const {
    'point': const [const ImmutablePoint(0, 0)],
    'line': const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
  };
  print(pointAndLine); // Prints: {point: [x: 0, y: 0], line: [x: 1, y: 10, x: -2, y: 11]}

  /// You can omit all but the first use of the `const` keyword:
  
  // Only one const, which establishes the constant context.
  const pointAndLine2 = {
    'point': [ImmutablePoint(0, 0)],
    'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],
  };
  print(pointAndLine2); // Prints: {point: [x: 0, y: 0], line: [x: 1, y: 10, x: -2, y: 11]}

  print(identical(pointAndLine, pointAndLine2)); // Prints: true

  /// If a constant constructor is outside of a constant context 
  /// and is invoked without `const`, it creates a [non-constant object]:
  var p8 = const ImmutablePoint(1, 1); // Creates a constant
  var p9 = ImmutablePoint(1, 1); // Does NOT create a constant

  // NOT the same instance!
  print(identical(p8, p9)); // Prints: false
  print(!identical(p8, p9)); // Prints: true
}
