/// Dart Class Modifiers: Overview & usage

/// To close the type hierarchy, use the `final` modifier. 
/// This prevents subtyping from a class outside of the current library. 
/// Disallowing both inheritance and implementation prevents 
/// subtyping entirely.

/// This guarantees:
/// - You can safely add incremental changes to the API.
/// - You can call instance methods knowing that 
///   they haven't been overwritten in a third-party subclass.

/// Final classes can be extended or implemented within the same library. 
/// The `final` modifier encompasses the effects of `base`, and therefore 
/// any subclasses must also be marked `base`, `final`, or `sealed`.
final class Vehicle {
  void moveForward(int meters) {
    print('Vehicle has moved $meters meters forward');
  }
}
