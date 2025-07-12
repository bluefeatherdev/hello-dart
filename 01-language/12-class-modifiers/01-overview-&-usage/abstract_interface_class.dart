/// Dart Class Modifiers: Overview & usage

/// The most common use for the `interface` modifier 
/// is to define a pure interface. Combine the `interface` 
/// and `abstract` modifiers for an `abstract interface class`.

/// Like an `interface` class, other libraries can implement, 
/// but can't inherit, a pure interface. Like an `abstract` class, 
/// a pure interface can have abstract members.
abstract interface class Vehicle {
  void moveForward(int meters);
}
