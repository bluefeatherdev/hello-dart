/// Dart Classes & Objects: Extension types

/// To use an extension type, 
/// create an instance the same as you would with a class: 
/// by calling a constructor:
extension type NumberE(int value) {
  NumberE operator +(NumberE other) =>
    NumberE(value + other.value);

  NumberE get next => NumberE(value + 1);
  bool isValid() => !value.isNegative;
}

void main() {
  var num1 = NumberE(1);
  var num2 = NumberE(-1);

  print(num1.value);  // 1
  print(num1.next); // 2
  print(num1.isValid());  // true

  print(num2.value);  // -1
  print(num2.next); // 0
  print(num2.isValid());  // false

  print(num1 + num2); // 0
}
