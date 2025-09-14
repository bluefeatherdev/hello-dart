/// Dart Keywords: [throw]

/// The throw keyword is used to raise exceptions.
/// Dart treats errors as objects, so you can throw any object
/// that implements Exception or Error.

/// 1. [Throwing Built-in Exceptions]:
void checkAge(int age) {
  if (age < 18) {
    throw Exception('You must be at least 18 years old.');
  }
}

/// 2. [Throwing Custom Exceptions]:
class InvalidEmailException implements Exception {
  final String message;
  InvalidEmailException(this.message);
}

void validateEmail(String email) {
  if (!email.contains('@')) {
    throw InvalidEmailException('Email must contain: @');
  } else {
    print('"$email" is a valid email');
  }
}

/// 3. [Throwing Errors (not just Exceptions)]:
void makeCrash() {
  throw ArgumentError('Invalid argument passed');
}

/// 4. [Throwing Inline with Arrow Functions]:
int parseOrThrow(String? input) =>
    input != null ? int.parse(input) : throw FormatException('Null input');

/// 5. [Throwing Inside try Blocks]:
void tryThrowExample() {
  try {
    throw FormatException('Bad format');
  } catch (e) {
    print('Caught: $e');
  }
}

/// 6. [Throwing with rethrow (related but distinct)]:
void rethrowingExample() {
  try {
    throw Exception('Oops');
  } catch (e) {
    rethrow;
  }
}

void main() {
  /// 1. [Throwing Built-in Exceptions]:
  checkAge(23); // Ok
  // checkAge(17); // Throws an Exception

  /// 2. [Throwing Custom Exceptions]:
  validateEmail('example@gmail.com'); // Ok
  // validateEmail('example-gmail.com'); // Throws an Exception

  /// 3. [Throwing Errors (not just Exceptions)]:
  // makeCrash(); // Throws an Error

  /// 4. [Throwing Inline with Arrow Functions]:
  print(parseOrThrow('23')); // Ok
  // print(parseOrThrow(null)); // Throws an Exception

  /// 5. [Throwing Inside try Blocks]:
  tryThrowExample(); // Caught: FormatException: Bad format

  /// 6. [Throwing with rethrow (related but distinct)]:
  // rethrowingExample(); // Throws an Exception
}
