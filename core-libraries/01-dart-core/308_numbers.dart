/// Dart Core Libraries: [dart:core]: Numbers

/// The [dart:core] library defines the `num`, `int`, and `double` classes,
/// which have some basic utilities for working with numbers:

void main() {
  /// 1. [Convert a string into an integer or double]:
  print(int.parse('42') == 42); // true
  print(int.parse('0x42') == 66); // true
  print(double.parse('0.50') == 0.5); // true

  print(num.parse('42') is int); // true
  print(num.parse('0x42') is int); // true
  print(num.parse('0.50') is double); // true

  print(int.parse('42', radix: 16) == 66); // true

  /// 2. [Convert an integer or double to a string]:
  print(42.toString() == '42'); // true
  print(123.456.toString() == '123.456'); // true
  print(123.456.toString() == '123.456'); // true
  print(123.456.toStringAsPrecision(2) == '1.2e+2'); // true

  // check out line 22
  print(double.parse('1.2e+2') == 120.0); // true
}
