/// Dart Classes & Objects: Classes

/// Use the `static` keyword 
/// to implement class-wide variables and methods.
class Queue {
  /// Static variables aren't initialized until they're used.
  /// This page follows the style guide recommendation 
  /// of preferring [lowerCamelCase] for constant names.
  static const initialCapacity = 16;
  // ...
}

void main() {
  assert(Queue.initialCapacity == 16);
  print(Queue.initialCapacity == 16); // Prints: true
}
