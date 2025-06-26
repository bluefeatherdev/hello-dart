// Dart Functions: Functions

/// All functions return a value. If no return value is specified, 
/// the statement `return null;` is implicitly appended to the function body:
foo() {}

/// To return multiple values in a function, 
/// aggregate the values in a [record]:
(String, int) foo2() {
  return ('something', 42);
}

void main() {  
  // ...
  print(foo() == null); // Prints: true

  // ...
  print(foo2()); // Prints: (something, 42)

  // ...
  print(foo2().runtimeType == ('', 0).runtimeType); // Prints: true
}
