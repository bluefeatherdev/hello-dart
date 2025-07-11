/// Dart Classes & Objects: Extension types

/// An extension type that is not [transparent] 
/// (that does not [implement] its representation type) 
/// is statically treated as a completely new type, 
/// distinct from its representation type. 
/// You can't assign it to its representation type, 
/// and it doesn't expose its representation type's members.

/// For example, 
/// take the `NumberE` extension type we declared under [Usage]:
extension type NumberE(int value) {
  NumberE operator +(NumberE other) =>
    NumberE(value + other.value);

  NumberE get next => NumberE(value + 1);
  bool isValid() => !value.isNegative;
}

void main() {
  var num1 = NumberE(1);
  // int num2 = NumberE(2);  // Error: Can't assign 'NumberE' to 'int'.

  print(num1.isValid()); // OK: Extension member invocation.
  // print(num1.isNegative());  // Error: 'NumberE' does not define 'int' member 'isNegative'.  

  var sum1 = num1 + num1; // OK: 'NumberE' defines '+'.
  // var diff1 = num1 - num1;  // Error: 'NumberE' does not define 'int' member '-'.
  var diff2 = num1.value - 2; // OK: Can access representation object with reference.
  // var sum2 = num1 + 2;  // Error: Can't assign 'int' to parameter type 'NumberE'.

  List<NumberE> numbers = [
    NumberE(1),
    num1.next,  // OK: 'next' getter returns type 'NumberE'.
    // 1,  // Error: Can't assign 'int' element to list type 'NumberE'.
  ];

  print(sum1);  // 2
  print(diff2); // -1
  print(numbers); // [1, 2]
}
