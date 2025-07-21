/// Dart Classes & Objects: Extension methods

/// Like all Dart code, extension methods are in libraries. 
/// You've already seen how to use an extension method—just 
/// import the library it's in, and use it like an ordinary method:

/// Import a library that contains an extension on String.
import 'string_apis.dart';

void main() {
  print('42'.padLeft(5)); // Use a String method.
  print('42'.parseInt()); // Use an extension method.

  /// That's all you usually need to know to use extension methods. 
  /// As you write your code, you might also need to know 
  /// how extension methods depend on static types (as opposed to `dynamic`) 
  /// and how to resolve [API conflicts].
}
