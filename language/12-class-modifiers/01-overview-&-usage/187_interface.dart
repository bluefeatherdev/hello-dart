/// Dart Class Modifiers: Overview & usage

/// To define an interface, use the `interface` modifier. 
/// Libraries outside of the interface's own defining library 
/// can implement the interface, but not extend it.

/// This guarantees:
/// - When one of the class's instance methods calls another 
///   instance method on `this`, it will always invoke a known 
///   implementation of the method from the same library.
/// - Other libraries can't override methods that the interface 
///   class's own methods might later call in unexpected ways. 
///   This reduces the [fragile base class problem].
import 'interface_class.dart';

// Can be constructed.
Vehicle myVehicle = Vehicle();

/// ERROR: Can't be inherited.
/// ```dart
/// class Car extends Vehicle {
///   int passengers = 4;
///   // ...
/// }
/// ```

// Can be implemented.
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    print('MockVehicle has moved $meters meters forward');
  }
}

void main() {
  print(myVehicle); // Instance of 'Vehicle'
  myVehicle.moveForward(25);

  MockVehicle myMockVehicle = MockVehicle();
  print(myMockVehicle); // Instance of 'MockVehicle'
  myMockVehicle.moveForward(50);
}
