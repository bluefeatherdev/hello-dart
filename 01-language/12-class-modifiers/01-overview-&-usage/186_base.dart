/// Dart Class Modifiers: Overview & usage

/// To enforce inheritance of a class or mixin's implementation, 
/// use the `base` modifier. A base class disallows implementation 
/// outside of its own library.

/// You must mark any class which implements or extends a base class 
/// as `base`, `final`, or `sealed`. This prevents outside libraries 
/// from breaking the base class guarantees.
import 'base_class.dart';

// Can be constructed.
Vehicle myVehicle = Vehicle();

// Can be extended.
base class Car extends Vehicle {
  int passengers = 4;
  
  @override
  void moveForward(int meters) {
    print('Car has moved $meters meters forward');
  }
}

/// ERROR: Can't be implemented.
/// ```dart
/// base class MockVehicle implements Vehicle {
///   @override
///   void moveForward(int meters) {
///     // ...
///   }
/// }
/// ```

void main() {
  Car myCar = Car();
  print(myCar.passengers);  // 4
  myCar.moveForward(25);
}
