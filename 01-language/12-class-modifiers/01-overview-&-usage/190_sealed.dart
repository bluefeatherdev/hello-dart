/// Dart Class Modifiers: Overview & usage

/// To create a known, enumerable set of subtypes, 
/// use the `sealed` modifier. This allows you to create a switch 
/// over those subtypes that is statically ensured to be [exhaustive].

/// The `sealed` modifier prevents a class from being extended 
/// or implemented outside its own library. Sealed classes 
/// are implicitly [abstract].

/// - They cannot be constructed themselves.
/// - They can have [factory constructors].
/// - They can define constructors for their subclasses to use.

/// Subclasses of sealed classes are, however, not implicitly abstract.

/// The compiler is aware of any possible direct subtypes because 
/// they can only exist in the same library. This allows the compiler 
/// to alert you when a switch does not exhaustively handle all possible 
/// subtypes in its cases:
sealed class Vehicle {}

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

// ERROR: Can't be instantiated.
// Vehicle myVehicle = Vehicle();

// Subclasses can be instantiated.
Vehicle myCar = Car();
Vehicle myBicycle = Bicycle();

// Can be implemented
Vehicle myTruck = Truck();

String getVehicleSound(Vehicle vehicle) {
  // ERROR: The switch is missing the Bicycle subtype or a default case.
  // return switch (vehicle) {
  //   Car() => 'vroom',
  //   Truck() => 'VROOOOMM',
  // };

  return switch (vehicle) {
    Car() => 'vroom',
    Truck() => 'VROOOOMM',
    Bicycle() => 'ring ring'
  };

  /// If you don't want [exhaustive switching], 
  /// or want to be able to add subtypes later without breaking the API, 
  /// use the `final` modifier. For a more in depth comparison, 
  /// read [sealed versus final].
}

void main() {
  print(myCar); // Instance of 'Car'
  print(getVehicleSound(myCar));  // vroom

  print(myTruck); // Instance of 'Truck'
  print(getVehicleSound(myTruck));  // VROOOOMM

  print(myBicycle); // Instance of 'Bicycle'
  print(getVehicleSound(myBicycle));  // ring ring
}
