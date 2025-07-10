/// Dart Classes & Objects: Extension methods

/// When you're using someone else's API 
/// or when you implement a library that's widely used, 
/// it's often impractical or impossible to change the API. 
/// But you might still want to add some functionality.

import 'string_apis.dart';

void main() {
  /// For example, consider the following code 
  /// that parses a string into an integer:
  int.parse('42');

  /// It might be nice—shorter and easier 
  /// to use with tools—to have that functionality 
  /// be on `String` instead:
  /// `'42'.parseInt();`
  
  /// To enable that code, you can import a library 
  /// that contains an extension of the `String` class:
  print('42'.parseInt());
}
