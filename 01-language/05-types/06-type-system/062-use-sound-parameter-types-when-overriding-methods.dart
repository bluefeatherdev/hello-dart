// Dart Types: Type system

/// Consider the `chase(Animal)` method for the [Animal] class:
/// ```dart
/// class Animal {
///   void chase(Animal a) {
///     ...
///   }
///   Animal get parent => ...
/// }
/// ```

/// The `chase()` method takes an [Animal]. 
/// A [HoneyBadger] chases anything. 
/// It's OK to override the `chase()` method 
/// to take anything ([Object]):
/// ```dart
/// class HoneyBadger extends Animal {
///   @override
///   void chase(Object a) {
///     ...
///   }
///
///   @override
///   Animal get parent => ...
/// }
/// ```

/// The following code tightens the parameter 
/// on the `chase()` method from [Animal] to [Mouse], 
/// a subclass of [Animal]:
/// ✗ static analysis: failure
/// ```dart
/// class Mouse extends Animal {
///   ...
/// }
/// 
/// class Cat extends Animal {
///   @override
///   void chase(Mouse a) { // This code is not type safe 
///     ...
///   }
/// }
/// ```

void main() {
  /// ...
  // Animal a = Cat();
  // a.chase(Alligator()); // Not type safe or feline safe.
  print('Hello, Dart!');
}
