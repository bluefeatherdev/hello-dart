// Dart Types: Type system

/// Expressions with a static type of [dynamic] 
/// can be implicitly cast to a more specific type:
int assumeString(dynamic object) {
  /// Check at run time that [object] is a [String]:
  String string = object;
  return string.length;
}
void main() {
  /// In this example, if [object] is a [String], the cast succeeds:
  int x = assumeString('Hello, Dart!');
  print(x); // Prints: 12

  /// If it's not a subtype of [String], 
  /// such as [int], a [TypeError] is thrown:
  /// ✗ runtime: failure
  /// ```dart
  /// int y = assumeString(1);
  /// print(y); // Unhandled exception: type 'int' is not a subtype of type 'String'
  /// ```
}
