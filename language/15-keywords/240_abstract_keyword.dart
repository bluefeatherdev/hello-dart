/// Dart Keywords: [abstract]

/// To define a class that doesn't require a full, 
/// concrete implementation of its entire interface, 
/// use the `abstract` modifier.

/// Abstract classes cannot be constructed from any library, 
/// whether its own or an outside library. Abstract classes often 
/// have [abstract methods].

abstract class Vehicle {
  void moveForward(int meters);
}

// Can be extended.
class Car extends Vehicle {
  int passengers = 4;

  @override
  void moveForward(int meters) {
    print('Car has moved $meters meters');
  }
}

// Can be implemented.
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    print('MockVehicle has moved $meters meters');
  }
}

void main() {  
  Car myCar = Car();
  print(myCar.passengers);  // 4
  myCar.moveForward(23);  // Car has moved 23 meters

  MockVehicle myMockVehicle = MockVehicle();
  myMockVehicle.moveForward(32);  // MockVehicle has moved 32 meters
}
