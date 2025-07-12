/// Dart Class Modifiers: Overview & usage

/// To define a class that doesn't require a full, 
/// concrete implementation of its entire interface, 
/// use the `abstract` modifier.

/// Abstract classes cannot be constructed from any library, 
/// whether its own or an outside library. Abstract classes 
/// often have [abstract methods].
import 'abstract_class.dart';

// Error: Can't be constructed.
// Vehicle myVehicle = Vehicle();

// Can be extended.
class Car extends Vehicle {
  int passengers = 4;

  @override
  void moveForward(int meters) {
    print('Car has moved $meters meters forward...');
  }
}

// Can be implemented.
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    print('MockVehicle has moved $meters meters forward...');
  }
}

/// If you want your abstract class to appear 
/// to be instantiable, define a [factory constructor].

void main() {
  Car myCar = Car();
  print(myCar.passengers);  // 4
  myCar.moveForward(25);

  MockVehicle myMockVehicle = MockVehicle();
  myMockVehicle.moveForward(50);
}
