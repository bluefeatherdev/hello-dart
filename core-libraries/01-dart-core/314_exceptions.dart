/// Dart Core Libraries: [dart:core]: Exceptions

/// The Dart core library defines many common exceptions and errors.
/// Exceptions are considered conditions that you can plan ahead for
/// and catch. Errors are conditions that you don't expect or plan for.

/// A couple of the most common errors are:
/// - `NoSuchMethodError`: Thrown when a receiving object
/// (which might be `null`) does not implement a method.
/// - `ArgumentError`: Can be thrown by a method that
///  encounters an unexpected argument.

// You can define a custom exception by implementing
// the Exception interface.
class FooException implements Exception {
  final String? msg;

  // All `const` instances with the same argument values ​
  // ​(in this case, the same msg) are the same object.
  // When an instance is `const`, Dart optimizes it so that
  // it is only believed once in memory, regardless of
  // how many times you use it.
  const FooException([this.msg]);

  @override
  String toString() => msg ?? 'FooException';
}

void main() {
  // You can define a custom exception by implementing
  // the Exception interface.
  final fooException1 = FooException('Type username');
  final fooException2 = FooException(null);
  final fooException3 = FooException();

  print(fooException1); // Type username
  print(fooException2); // FooException
  print(fooException3); // FooException

  try {
    throw FooException('Username is missing');
  } catch (e) {
    print('Exception handled: $e');
  }
}
