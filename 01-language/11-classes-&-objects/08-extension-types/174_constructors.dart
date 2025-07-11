/// Dart Classes & Objects: Extension types

/// You can optionally declare [constructors] in an extension type's body. 
/// The representation declaration itself is an implicit constructor, 
/// so by default takes the place of an unnamed constructor 
/// for the extension type. 

/// Any additional non-redirecting generative constructors 
/// must initialize the representation object's instance variable 
/// using `this.i` in its initializer list or formal parameters.
extension type E(int i) {
  E.n(this.i);
  E.m(int j, String foo) : i = j + foo.length;
}

void main() {
  E(4); // Implicit unnamed constructor.
  E.n(3); // Named constructor.
  E.m(5, "Hello!"); // Named constructor with additional parameters.

  print(E(4));  // 4
  print(E.n(3));  // 3
  print(E.m(5, "Hello!"));  // 11

  main2();
}

/// Or, you can name the representation declaration constructor, 
/// in which case there is room for an unnamed constructor in the body:
extension type const OtherE._(int it) {
  OtherE(): this._(420);
  OtherE.otherName(this.it);
}

void main2() {
  OtherE();
  const OtherE._(2);
  OtherE.otherName(3);

  print(OtherE());  // 42
  print(const OtherE._(2)); // 2
  print(OtherE.otherName(3)); // 3

  main3();
}

/// You can also completely hide the constructor, 
/// instead of just defining a new one, 
/// using the same private constructor syntax for classes, `_`. 
/// For example, if you only want clients constructing `AnotherE` with a `String`, 
/// even though the underlying type is `int`:
extension type AnotherE._(int i) {
  AnotherE.fromString(String foo) : i = int.parse(foo);
}

void main3() {
  AnotherE._(23);
  print(AnotherE._(23));  // 23
  
  AnotherE.fromString('46');
  print(AnotherE.fromString('46')); // 46
}

/// You can also declare forwarding generative constructors, 
/// or [factory constructors] (which can also forward to constructors 
/// of sub-extension types).
