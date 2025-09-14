/// Dart Keywords: [library]

/// The `library` keyword is used to declare a named library at the top 
/// of a Dart file. While every Dart file is technically a library—even 
/// without this directive—using library provides clarity, enables 
/// metadata annotations, and improves documentation.

import './awesome_math_library/lib/awesome_math.dart';

void main() { 
  print('See \'awesome_math_library\' folder!');
  print('Add: ${add(2, 3)}'); // Add: 5.0
  print('Multiply: ${multiply(2, 3)}'); // Multiply: 6.0
  print('Pi: $pi'); // Pi: 3.1415926535
}
