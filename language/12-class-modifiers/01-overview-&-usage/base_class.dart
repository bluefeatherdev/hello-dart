/// Dart Class Modifiers: Overview & usage

/// To enforce inheritance of a class or mixin's implementation, 
/// use the `base` modifier. A base class disallows implementation 
/// outside of its own library.

/// You must mark any class which implements or extends a base class 
/// as `base`, `final`, or `sealed`. This prevents outside libraries 
/// from breaking the base class guarantees.
base class Vehicle {
  void moveForward(int meters) {
    print('Vehicle has moved $meters meters forward');
  }
}
