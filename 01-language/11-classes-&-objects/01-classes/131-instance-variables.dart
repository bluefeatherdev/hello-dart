/// Dart Classes & Objects: Classes

/// Here's how you declare instance variables:
/// ```dart
/// class Point {
///   double? x;  // Declare instance variable x, initially null.
///   double? y;  // Declare y, initially null.
///   double z = 0; // Declare z, initially 0.
/// }
/// ```

/// An uninitialized instance variable declared with a [nullable type]
/// has the value [null]. Non-nullable instance variables 
/// [must be initialized] at declaration.

/// All instance variables generate an implicit [getter] method. 
/// Non-final instance variables and `late final` instance variables 
/// without initializers also generate an implicit [setter] method. 
/// For details, check out [Getters and setters].
/// ```dart
/// class Point {
///   double? x;  // Declare instance variable x, initially null.
///   double? y;  // Declare y, initially null.
/// }
///
/// void main() {
///   var point = Point();
///   point.x = 4;  // Use the setter method for x.
///   assert(point.x == 4); // Use the getter method for x.
///   assert(point.y == null); // Values default to null.
///   print(point.x == 4); // Prints: true
///   print(point.y == null); // Prints: true
/// }
/// ```

double initialX = 1.5;

class Point {
  /// OK, can access declarations that do not depend on `this`:
  double? x = initialX;

  /// ERROR, can't access `this` in non-`late` initializer:
  /// `double? y = this.x;`
  
  /// OK, can access `this` in `late` initializer:
  late double? z = this.x;

  /// OK, `this.x` and `this.y` are parameter declarations, not expressions:
  /// `Point(this.x, this.y);`
}

/// Instance variables can be `final`, 
/// in which case they must be set exactly once. 
/// Initialize `final`, non-`late` instance variables at declaration, 
/// using a constructor parameter, or using a constructor's [initializer list]:
/// ```dart
/// class ProfileMark {
///   final String name;
///   final DataTime start = DataTime.now();
///
///   ProfileMark(this.name);
///   ProfileMark.unnamed() : name = '';
/// }
/// ```

/// If you need to assign the value of a final instance variable 
/// after the constructor body starts, you can use one of the following:
/// - Use a [factory constructor].
/// - Use `late final`, but be careful: 
///   a `late final` without an initializer adds a setter to the API.

void main() {
  print('Hello, Dart!');
}
