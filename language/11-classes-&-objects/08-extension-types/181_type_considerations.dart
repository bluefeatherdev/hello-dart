/// Dart Classes & Objects: Extension types

/// Extension types are a compile-time wrapping construct. 
/// At run time, there is absolutely no trace of the extension type. 
/// Any type query or similar run-time operations work 
/// on the representation type.

/// This makes extension types an [unsafe] abstraction, 
/// because you can always find out the representation type 
/// at run time and access the underlying object.

extension type NumberE(int value) {
  NumberE operator +(NumberE other) =>
    NumberE(value + other.value);

  NumberE get next => NumberE(value + 1);
  bool isValid() => !value.isNegative;
}

void main() {
  var n = NumberE(1);

  // Run-time type of 'n' is representation type 'int'.
  if (n is int) print(n.value); // Prints 1.

  // Can use 'int' methods on 'n' at run time.
  if (n case int x) print(x.toRadixString(10)); // Prints 1.
  switch (n) {
    case int(:var isEven):
      print('$n (${isEven ? 'even' : 'odd'})'); // Prints 1 (odd).
  }

  // Similarly, the static type of the matched value 
  // is that of the extension type in this example:
  int i = 2;
  if (i is NumberE) print('It is'); // Prints 'It is'.
  if (i case NumberE v) print('value: ${v.value}'); // Prints 'value: 2'.
  switch (i) {
    case NumberE(:var value):
      print('value: $value'); // Prints 'value: 2'.
  }

  /// It's important to be aware of this quality 
  /// when using extension types. Always keep in mind that 
  /// an extension type exists and matters at compile time, 
  /// but gets erased [during] compilation.
}
