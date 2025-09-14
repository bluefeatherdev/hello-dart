/// Dart Keywords: [base]

/// To enforce inheritance of a class or mixin's implementation, 
/// use the `base` modifier. A base class disallows implementation 
/// outside of its own library. 

/// You must mark any class which implements or extends a base 
/// class as `base`, `final`, or `sealed`. This prevents outside libraries 
/// from breaking the base class guarantees.

base class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}

// Can be constructed (inside and outside its library).
Vehicle myVehicle = Vehicle();

// Can be extended (inside and outside its library).
base class Car extends Vehicle {
  int passengers = 4;

  @override
  void moveForward(int meters) {
    print('Car has moved $meters meters');
  }
}

// Can be implemented (JUST inside its library).
base class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    print('MockVehicle has moved $meters meters');
  }
}

void main() {  
  print(myVehicle); // Instance of 'Vehicle'

  Car myCar = Car();
  print(myCar.passengers);  // 4
  myCar.moveForward(23);  // Car has moved 23 meters

  MockVehicle myMockVehicle = MockVehicle();
  myMockVehicle.moveForward(32);  // MockVehicle has moved 32 meters
}
