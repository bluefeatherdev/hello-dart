/// Dart Classes & Objects: Extension types

/// Define a new extension type with the `extension type` declaration 
/// and a name, followed by the [representation type declaration] 
/// in parentheses:

extension type E(int i) {
  // Define set of operations.
}

/// The representation type declaration `(int i) `
/// specifies that the underlying type of extension type `E` is `int`, 
/// and that the reference to the [representation object] is named `i`. 
/// The declaration also introduces:
/// - An implicit getter for the representation object 
///   with the representation type as the return type: `int get i`.
/// - An implicit constructor: `E(int i) : i = i`.

/// The representation getter gives access to the representation object 
/// typed as the underlying type. The getter is in scope in the extension 
/// type body, and you can access it using its name like any other getter:
/// - Within the extension type body using `i` (or `this.i`).
/// - Outside with a property extraction using `e.i` 
///   (where `e` has the extension type as its static type).

/// Extension type declarations can also include [type parameters] 
/// just like classes or extensions:
extension type AnotherE<T>(List<T> elements) {
  // ...
}

void main() {
  print('Hello, Dart!');
}

