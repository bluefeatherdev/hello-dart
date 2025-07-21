// Dart Types: Type system

/// Some (rarely used) coding patterns rely on tightening 
/// a type by overriding a parameter's type with a subtype, 
/// which is invalid. In this case, you can use the [covariant] 
/// keyword to tell the analyzer that you're doing this intentionally. 
/// This removes the static error and instead checks for 
/// an invalid argument type at runtime:
class Animal {
  void chase(Animal x) {
    // ...
  }
}

class Mouse extends Animal {
  // ...
}

class Cat extends Animal {
  @override
  void chase(covariant Mouse x) {
    // ...
  }
}

void main() {
  /// Although this example shows using [covariant] in the subtype, 
  /// the [covariant] keyword can be placed in either 
  /// the superclass or the subclass method. 
  /// Usually the superclass method is the best place to put it. 
  /// The [covariant] keyword applies to a single parameter 
  /// and is also supported on setters and fields.
  print('Hello, Dart!');
}
