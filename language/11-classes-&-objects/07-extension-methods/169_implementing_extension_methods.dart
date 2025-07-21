/// Dart Classes & Objects: Extension methods

/// Use the following syntax to create an extension:
/// ```dart
/// extension <extension name>? on <type> { // <extension-name> is optional
///   (<member definition>)*  // Can provide one or more <member definition>.
/// }
/// ```

/// For example, 
/// here's how you might implement 
/// an extension on the `String` class:
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

/// The members of an extension can be methods, 
/// getters, setters, or operators. Extensions can also have 
/// static fields and static helper methods. 
/// To access static members outside the extension declaration, 
/// invoke them through the declaration name 
/// like [class variables and methods].

void main() {
  print('42'.parseInt()); // 42
  print('42'.parseDouble());  // 42.0
}
