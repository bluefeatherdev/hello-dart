/// Dart Classes & Objects: Constructors

/// If your class produces unchanging objects, 
/// make these objects compile-time constants. 
/// To make objects compile-time constants, 
/// define a `const` constructor with 
/// all instance variables set as `final`.
class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;
  
  const ImmutablePoint(this.x, this.y);

  /// Constant constructors don't always create constants. 
  /// They might be invoked in a non-`const` context. 
  /// To learn more, consult the section on [using constructors].
}

void main() {
  final pointA = ImmutablePoint.origin; // Predefined constant instance
  final pointB = ImmutablePoint(1.5, 2.3); // Instance with different values

  print('pointA: (${pointA.x}, ${pointA.y})');
  // Prints: pointA: (0, 0)
  print('pointB: (${pointB.x}, ${pointB.y})');
  // Prints: pointB: (1.5, 2.3)
}
