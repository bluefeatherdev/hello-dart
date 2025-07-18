// Dart Types: Type system

/// The return type of a method in a subclass 
/// must be the same type or a subtype of the return type 
/// of the method in the superclass. 
/// Consider the getter method in the [Animal] class:
/// ```dart
/// class Animal {
///   void chase(Animal a) {
///     ...
///   }
///   Animal get parent => ...
/// }
/// ```

/// The [parent] getter method returns an [Animal]. 
/// In the [HoneyBadger] subclass, 
/// you can replace the getter's return type 
/// with [HoneyBadger] (or any other subtype of [Animal]), 
/// but an unrelated type is not allowed:
/// ```dart
/// class HoneyBadger extends Animal {
///   @override
///   void chase(Animal a) {
///     ...
///   }
///
///   @override
///   HoneyBadger get parent => ...
/// }
/// ```

void main() {
  /// ...
  print('Hello, Dart!');
}
