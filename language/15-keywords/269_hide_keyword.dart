/// Dart Keywords: [hide]

/// The `hide` keyword is used in import directives to selectively exclude 
/// certain symbols from a library you're importing. This helps avoid name 
/// collisions or simply keeps your namespace clean.
/// 
/// ```dart
/// import 'dart:name' hide SomeClass, someFunction;
/// import 'package:some_package/some_library.dart' hide SomeClass, someFunction;
/// ```
import 'dart:math' as math hide pi;

void main() { 
  print(math.sqrt(16));     // 4.0
  print(math.min(15, 23));  // 15
  print(math.max(15, 23));  // 23
  // print(math.pi);        // Error
}
