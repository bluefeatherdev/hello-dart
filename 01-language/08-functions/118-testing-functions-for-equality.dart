// Dart Functions: Functions

/// Here's an example of testing top-level functions, 
/// static methods, and instance methods for equality:
void foo() {} // A top-level function

class A {
  static void bar() {}  // A static method
  void baz() {} // An instance method
}

void main() {  
  Function x;

  // Comparing top-level functions.
  x = foo;
  print(foo == x);  // Prints: true

  // Comparing static methods.
  x = A.bar;
  print(A.bar == x);  // Prints: true

  // Comparing instance methods.
  var v = A();  // Instance #1 of A
  var w = A();  // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  print(y.baz == x);  // Prints: true

  // These closures refer to different instances,
  // so they're unequal.
  print(v.baz != w.baz);  // Prints: true
}
