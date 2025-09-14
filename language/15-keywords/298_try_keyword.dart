/// Dart Keywords: [try]

/// In Dart, the `try` keyword is used for exception handling,
/// allowing you to catch and manage errors gracefully without
/// crashing your program.

void main() {
  /// 1. [Basic `try-catch` Usage]:
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Caught an exception: $e');
  }

  /// 2. [Using `on` for Specific Exception Types]:
  try {
    int.parse('abc');
  } on FormatException {
    print('Caught a FormatException!');
  }

  /// 3. [Combining `on` and `catch`]:
  try {
    int.parse('abc');
  } on FormatException catch (e) {
    print('Specific FormatException: $e');
  }

  /// 4. [Catching with Stack Trace]:
  try {
    List<int> numbers = [1, 2, 3];
    print(numbers[5]); // Index out of range
  } catch (e, stackTrace) {
    print('Exception: $e');
    print('Stack trace: $stackTrace');
  }

  /// 5. [Using `finally` for Cleanup]:
  try {
    print('Trying something risky...');
    throw Exception('Oops!');
  } catch (e) {
    print('Caught: $e');
  } finally {
    print('Always runs, even if there was an exception.');
  }

  /// 6. [Rethrowing Exceptions]:
  try {
    riskyFunction();
  } catch (e) {
    print('Caller also caught: $e');
  }
}

/// 6. [Rethrowing Exceptions]:
void riskyFunction() {
  try {
    throw FormatException('Bad format!');
  } catch (e) {
    print('Handled partially: $e');
    rethrow; // Let the caller handle it too
  }
}
