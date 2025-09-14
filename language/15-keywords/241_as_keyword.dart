/// Dart Keywords: [as]

/// The `as` keyword in Dart is used for:
/// [Import aliasing]: To give a library an alias for disambiguation.
/// [Prefix usage]: To access members using the alias prefix.
/// [Type casting]: To explicitly cast an object to a specific type.

/// Set alias of `Dart:math` to `math`,
/// and access its members as `math`:
import 'dart:math' as math;
void importAliasingExample() {
  print(math.sqrt(16));
}

/// Cast `Object` to `String`:
void typeCastingExample() {
  Object obj = 'Hello, Dart!';
  String str = obj as String;
  print(str.toUpperCase());
}

void main() {  
  importAliasingExample();  // 4.0
  typeCastingExample(); // HELLO, DART!
}
