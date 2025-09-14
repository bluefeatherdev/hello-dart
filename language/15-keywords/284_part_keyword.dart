/// Dart Keywords: [part]

/// The `part` keyword is used to split a Dart library across multiple files. 
/// It allows you to organize large codebases into smaller, manageable 
/// pieces while keeping them logically grouped under a single library.

/// - `part`: Declares that a file is part of another library
/// - `part of`: Declares that the current file belongs to a specific library

import './awesome_math_library/lib/awesome_math.dart';

void main() { 
  print('See \'awesome_math_library\' folder!');
  print('Add: ${add(2, 3)}'); // Add: 5.0
  print('Multiply: ${multiply(2, 3)}'); // Multiply: 6.0
  print('Pi: $pi'); // Pi: 3.1415926535
}
