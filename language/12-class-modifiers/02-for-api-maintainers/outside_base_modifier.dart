/// Dart Class Modifiers: Class modifiers for API maintainers

/// The `base` modifier is somewhat the opposite of `interface`. 
/// It allows you to use the class in an extends clause, 
/// or use a mixin or mixin class in a `with` clause. 
/// But, it disallows code outside of the class's library 
/// from using the class or mixin in an `implements` clause.

/// This ensures that every object that is an instance of your class 
/// or mixin's interface inherits your actual implementation. 
/// In particular, this means that every instance will include 
/// all of the private members your class or mixin declares. 
/// This can help prevent runtime errors that might otherwise occur.

/// Consider this library:
class A {
  void _privateMethod() {
    print('I inherited from A');
  }
}

void callPrivateMethodA(A a) {
  a._privateMethod();
}
