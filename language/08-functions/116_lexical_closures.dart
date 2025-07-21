/// Dart Functions

/// A function object that can access variables in its lexical scope
/// when the function sits outside that scope is called a [closure].

/// Functions can close over variables defined in surrounding scopes. 
/// In the following example, `makeAdder()` captures the variable `addBy`. 
/// Wherever the returned function goes, it remembers `addBy`.

/// Returns a function that adds [addBy] to the
/// function's argument:
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {  
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  print(add2(3)); // Prints: 5
  print(add4(3)); // Prints: 7
}
