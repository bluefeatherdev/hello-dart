/// Dart Keywords: [of]

/// In Dart, `of` is not a reserved keyword in the strictest sense—it’s 
/// a [contextual identifier] often used in [Flutter] and [framework-style APIs]. 
/// It’s not part of the Dart language syntax itself, but it appears 
/// frequently in idiomatic Dart code.

/// `of` also appears in library declarations in Dart, specifically in 
/// the `part of` directive. This is one of the few places where of behaves 
/// like a true language keyword, and it’s part of Dart’s library system.

import './awesome_math_library/lib/awesome_math.dart';

void main() { 
  print('See \'awesome_math_library\' folder!');
  print('Add: ${add(2, 3)}'); // Add: 5.0
  print('Multiply: ${multiply(2, 3)}'); // Multiply: 6.0
  print('Pi: $pi'); // Pi: 3.1415926535
}
