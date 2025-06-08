// Final and Const in Dart
// ignore_for_file: unnecessary_type_check

void main() {
  // Final variables are initialized only once
  // and cannot be reassigned
  // Instance variables can be final but not const.
  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby'; // With a type annotation

  // Error: a final variable can only be set once.
  // name = 'Alice';

  print(name);      // Output: Bob
  print(nickname);  // Output: Bobby

  // Const variables are compile-time constants
  const bar = 1000000;  // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  print(bar); // Output: 1000000
  print(atm); // Output: 1013250.0

  // You can also use it to create constant values,
  // as well as to declare constructors that create constant values
  // Any variable can have a constant value.
  var a = const [];
  final b = const [];
  const c = []; /// Equivalent to `const []`

  print(a); // Output: []
  print(b); // Output: []
  print(c); // Output: []

  // You can change the reference 
  // of a non-final, non-const variable, 
  // even if it used to have a const value:
  var d = const [];
  d = [1, 2, 3];  /// Was `const []`
  print(d); // Output: [1, 2, 3]

  /// You can't change the value of a [const] variable:
  const e = []; /// Equivalent to `const []`
  // e = [1, 2, 3]; // Error: Constant variables can't be assigned a value.
  print(e); // Output: []

  /// You can define constants that use 
  /// type checks and casts ([is] and [as]), 
  /// collection [if], and spread operators ([...] and [...?]):
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
  
  print(i);    // Output: 3
  print(list); // Output: [3]
  print(map);  // Output: {3: int}
  print(set);  // Output: {3}

  /// Although a [final] object cannot be modified, 
  /// its fields can be changed. 
  /// In comparison, a [const] object and its fields 
  /// cannot be changed: they're immutable.
}
