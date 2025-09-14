/// Dart Keywords: [covariant]

/// Some (rarely used) coding patterns rely on tightening a type 
/// by overriding a parameter's type with a subtype, which is invalid. 
/// In this case, you can use the `covariant` keyword to tell the analyzer 
/// that you're doing this intentionally. This removes the static error 
/// and instead checks for an invalid argument type at runtime:

/// The following shows how you might use `covariant`:
class Animal {
  void chase(Animal x) {
    print('Animal is chasing another animal.');
  }
}

class Mouse extends Animal {
  @override
  String toString() => 'Mouse';
}

class Cat extends Animal {
  @override
  void chase(covariant Mouse x) {
    print('Cat is chasing a $x.');
  }
}

class Dog extends Animal {
  @override
  String toString() => 'Dog';
}

void main() { 
  Animal genericCat = Cat();
  genericCat.chase(Mouse());  // OK.

  /// Unsafe call: `Dog` is not a `Mouse`, 
  /// but the compiler allows it due to `covariant`.
  /// This will throw a runtime error: 
  /// type 'Dog' is not a subtype of type 'Mouse' of 'x'
  try {
    genericCat.chase(Dog());
  } catch (e) {
    print('Runtime error: $e');
  }
}
