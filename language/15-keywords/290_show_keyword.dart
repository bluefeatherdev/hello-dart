/// Dart Keywords: [show]

/// The `show` keyword is used exclusively in import directives to 
/// selectively expose specific symbols (classes, functions, variables, 
/// etc.) from a library. It helps you limit the namespace you're 
/// importing, which improves clarity and avoids naming conflicts:

import 'dart:math' show pow, sqrt;

void main() { 
  print(sqrt(16));    // 4.0
  print(pow(2, 3));   // 8
  // print(Random()); // Error
}
