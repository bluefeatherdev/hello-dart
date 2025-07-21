/// Dart Class Modifiers: Overview & usage

/// To define a class that doesn't require a full, 
/// concrete implementation of its entire interface, 
/// use the `abstract` modifier.

/// Abstract classes cannot be constructed from any library, 
/// whether its own or an outside library. Abstract classes 
/// often have [abstract methods].
abstract class Vehicle {
  // abstract methods
  void moveForward(int meters);

  /// If you want your abstract class to appear 
  /// to be instantiable, define a [factory constructor]:
  /// ```dart
  /// import '185_abstract.dart';
  /// factory Vehicle({required String type}) {
  ///   switch (type.toLowerCase()) {
  ///     case 'car':
  ///       return Car();
  ///     case 'mock':
  ///       return MockVehicle();
  ///     default:
  ///       throw ArgumentError('Unknown vehicle type: $type');
  ///   }
  /// }
  /// ```
}
