// Dart Types: Type system
void main() {
  /// Class hierarchy:
  ///   Animal (superclass)
  ///     └── Alligator (subclass of Animal)
  ///     └── Cat (subclass of Animal)
  ///         └── Lion (subclass of Cat)
  ///         └── MaineCoon (subclass of Cat)
  ///     └── HoneyBadger (subclass of Animal)

  /// Consider the following simple assignment where `Cat c` 
  /// is a [consumer] and `Cat()` is a [producer]:

  /// You can replace a [consumer's type] with a [supertype] 
  /// and a [producer's type] with a [subtype]:

  /// ✔ static analysis: success
  /// ```dart
  /// Cat c = Cat();
  /// ```

  /// ✔ static analysis: success
  /// ```dart
  /// Animal c = Cat();
  /// ```

  /// ✗ static analysis: failure
  /// ```dart
  /// MaineCoon c = Cat();
  /// ```
  
  /// ✔ static analysis: success
  /// ```dart
  /// Cat c = MaineCoon();
  /// ```
  
  print('Hello, Dart!');
}
