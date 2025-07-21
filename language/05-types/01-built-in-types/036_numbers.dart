// Types: Built-in types in Dart
void main() {
  /// Both [int] and [double] are subtypes of [num].
  
  // Integers are numbers without a decimal point.
  var x = 1; // int
  var hex = 0xDEADBEEF; // int

  // If a number includes a decimal, it is a double.
  var y = 1.1; // double
  var exponents = 1.42e5; // double

  // You can also declare a variable as a num. 
  // The variable can have both integer and double values.
  num a = 1;  // int
  a += 2.5;   // double

  // Integer literals are automatically converted 
  // to doubles when necessary.
  double z = 1;

  // Show results
  print(x);
  print(hex);
  print(y);
  print(exponents);
  print(a);
  print(z);

  // ----------------- //

  /// `assert(condition)` throws an exception 
  /// if condition is false.
   
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  // Show results
  print(one);
  print(onePointOne);
  print(oneAsString);
  print(piAsString);

  // ----------------- //

  /// `assert(condition)` throws an exception 
  /// if condition is false.
   
  assert((3 << 1) == 6);  // 0011 << 1 == 0110
  assert((3 | 4) == 7);   // 0011 << 0100 == 0111
  assert((3 & 4) == 0);   // 0011 << 0100 == 0000

  // ----------------- //

  // Number literals are compile-time constants.
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry  = secondsUntilRetry * msPerSecond;

  // Show results
  print(msPerSecond);
  print(secondsUntilRetry);
  print(msUntilRetry);

  // ----------------- //

  /// You can use one or more underscores ([_]) as 
  /// digit separators to make long number literals more readable. 
  /// Multiple digit separators allow for higher level grouping.
  /// Requires a [language version] of at least [3.6.]
  var n1 = 1_000_000;
  var n2 = 0.000_000_000_01;
  var n3 = 0x00_14_22_01_23_45; // MAC address
  var n4 = 555_123_4567;  // US Phone number
  var n5 = 100__000_000__000_000; // one hundred million million!
  
  // Show results
  print(n1);
  print(n2);
  print(n3);
  print(n4);
  print(n5);
}
