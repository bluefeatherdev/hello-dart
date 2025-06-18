// Dart Types: Type system
void main() {
  /// Local variable types are [inferred] from their initializer, if any. 
  /// Subsequent assignments are not taken into account: 
  var x = 3;  // x is inferred as an int.
  // x = 4.0;  // Error: A value of type 'double' can't be assigned to a variable of type 'int'.
  print(x); // Prints: 3

  /// This may mean that too precise a type may be inferred. 
  /// If so, you can add a [type annotation]:
  num y = 3;  // A num can be double or int.
  print(y); // Prints: 3
  y = 4.0;  // OK.
  print(y); // Prints: 4.0
}
