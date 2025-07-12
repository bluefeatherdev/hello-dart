/// Dart Class Modifiers: Overview & usage

/// The most common use for the `interface` modifier 
/// is to define a pure interface. Combine the `interface` 
/// and `abstract` modifiers for an `abstract interface class`.

/// Like an `interface` class, other libraries can implement, 
/// but can't inherit, a pure interface. Like an `abstract` class, 
/// a pure interface can have abstract members.
import 'abstract_interface_class.dart';

// ERROR: Can't be constructed.
// Vehicle myVehicle = Vehicle();

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
  MockVehicle myMockVehicle = MockVehicle();
  print(myMockVehicle); // Instance of 'MockVehicle'
  myMockVehicle.moveForward(50);
}
