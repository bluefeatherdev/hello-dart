/// Dart Keywords: [external]

/// An external function is a function whose body is implemented 
/// separately from its declaration. Include the `external` keyword 
/// before a function declaration, like so:
external int sum(int a, int b);

void main() { 
  /// These functions are pre-compiled and linked by the own 
  /// Dart execution environment. You can't define its 
  /// manually implementation.
  print(sum(2, 3)); // Error
}
