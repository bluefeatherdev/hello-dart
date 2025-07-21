// Dart Control flow: Error handling

/// Because throwing an exception is an expression, you can 
/// throw exceptions in => statements, as well as anywhere else 
/// that allows expressions:
/// `void distanceTo(Point other) => throw UnimplementedError();`

void main() {
  /// Here's an example of throwing, or [raising], an exception:
  /// ```dart
  /// throw FormatException('Expected at least 1 section');
  /// throw 'Out of llamas!';
  /// ```
  print('Hello, Dart!');
}
