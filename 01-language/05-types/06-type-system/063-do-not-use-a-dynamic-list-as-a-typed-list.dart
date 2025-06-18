// Dart Types: Type system
void main() {
  /// A [dynamic] list is good when you want to have a list 
  /// with different kinds of things in it. 
  /// However, you can't use a [dynamic] list as a typed list.
  
  /// This rule also applies to instances of generic types.

  /// The following code creates a [dynamic] list of [Dog], 
  /// and assigns it to a list of type [Cat], 
  /// which generates an error during static analysis:
  /// ```dart
  /// List<Cat> foo = <dynamic>[Dog()]; // Error
  /// List<dynamic> bar = <dynamic>[Dog(), Cat()]; // OK
  /// ```
  print('Hello, Dart!');
}
