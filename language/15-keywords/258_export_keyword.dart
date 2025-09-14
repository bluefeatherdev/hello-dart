/// Dart Keywords: [export]

/// The `export` keyword is used to re-export a library, that is, 
/// to make symbols (classes, functions, constants, etc.) defined 
/// in another library are available for those who import the current 
/// library.
///
/// For example, if `utils.dart` is the main file of my package on pub.dev,
/// anyone who imports `utils.dart` will automatically have access to everything
/// from `math_utils.dart` and `string_utils.dart`, because I included the following
/// export statements in `utils.dart`:
/// ```dart
/// export 'src/math_utils.dart';
/// export 'src/string_utils.dart';
/// ```

void main() { 
  print('Hello, Dart!');
}
