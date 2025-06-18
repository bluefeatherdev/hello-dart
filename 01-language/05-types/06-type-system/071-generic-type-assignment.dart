// Dart Types: Type system
void main() {
  /// Class hierarchy:
  ///   List<Animal> (supertype)
  ///    └── List<Cat> (subtype of a List of Animal)
  ///         └── List<MaineCoon> (subtype of a List of MaineCoon)

  /// You can assign a MaineCoon list to myCats because 
  /// List<MaineCoon> is a subtype of List<Cat>:
  /// ✔ static analysis: success
  /// ```dart
  /// List<MaineCoon> myMaineCoons = ...
  /// List<Cat> myCats = myMaineCoons;
  /// ```
  
  /// This assignment doesn't pass static analysis because 
  /// it creates an implicit downcast, which is disallowed 
  /// from non-dynamic types such as Animal:
  /// ✗ static analysis: failure
  /// ```dart
  /// List<Animal> myAnimals = ...
  /// List<Cat> myCats = myAnimals;
  /// ```
  
  /// An explicit cast might still fail at runtime, 
  /// though, depending on the actual type of the list 
  /// being cast (myAnimals):
  /// ```dart
  /// List<Animal> myAnimals = ...
  /// List<Cat> myCats = myAnimals as List<Cat>;
  /// ```
  
  print('Hello, Dart!');
}
