// Dart Types: Type system
void main() {
  /// Runtime checks deal with type safety issues 
  /// that can't be detected at compile time.
  
  /// For example, the following code throws an exception 
  /// at runtime because it's an error to cast 
  /// a list of dogs to a list of cats:
  /// ```dart
  /// List<Animal> animals = <Dog>[Dog()];
  /// List<Cats> cats = animals as List<Cat>; // Error
  /// ```
  print('Hello, Dart!');
}
