/// Dart Classes & Objects: Constructors

/// To avoid passing each parameter into the super invocation of a constructor, 
/// use super-initializer parameters to forward parameters to the specified 
/// or default superclass constructor. You can't use this feature with 
/// [redirecting constructors]. Super-initializer parameters have syntax 
/// and semantics like [initializing formal parameters].

/// If the super-constructor invocation includes positional arguments, 
/// super-initializer parameters can't be positional.
class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);
}

class Vector3d extends Vector2d {
  final double z;

  // Forward the x and y parameters to the default super constructor like:
  // Vector3d(final double x, final double y, this.z) : super(x, y);
  Vector3d(super.x, super.y, this.z);

  // To further illustrate, consider the following example:

  /// If you invoke the super constructor (`super(0)`) with any
  /// positional arguments, using a super parameter (`super.x`)
  /// results in an error.
  /// ```dart
  /// Vector3d.xAxisError(super.x) : z = 0, super(0); // BAD
  /// ```
  /// This named constructor tries to set the `x` value twice: 
  /// once in the super constructor 
  /// and once as a positional super parameter. 
  /// As both address the `x` positional parameter, 
  /// this results in an error.

}

/// When the super constructor has named arguments, 
/// you can split them between named super parameters 
/// (`super.y` in the next example) 
/// and named arguments to the super constructor invocation 
/// (`super.named(x: 0)`).
/// ```dart
/// class Vector2d {
///   // ...
///   Vector2d.named({required this.x, required this.y});
/// }
/// 
/// class Vector3d extends Vector2d {
///   final double z;
/// 
///   // Forward the y parameter to the named super constructor like:
///   // Vector3d.yzPlane({required double y, required this.z})
///   //       : super.named(x: 0, y: y);
///   Vector3d.yzPlane({required super.y, required this.z}) : super.named(x: 0);
/// }
/// ```

void main() {
  var v1 = Vector2d(1.5, 2.3);
  print(v1);  // Prints: Instance of 'Vector2d'

  var v2 = Vector3d(1.5, 2.3, 3.8);
  print(v2);  // Prints: Instance of 'Vector3d'
}
