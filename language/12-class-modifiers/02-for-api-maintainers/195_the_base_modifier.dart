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

/// This code seems fine on its own, 
/// but there's nothing preventing a user 
/// from creating another library like this:
import 'outside_base_modifier.dart';

class B implements A {
  // No implementation of _privateMethod()!
}

void test() {
  callPrivateMethodA(B()); // Runtime exception!
}

/// Adding the `base` modifier to the class can help prevent 
/// these runtime errors. As with `interface`, you can ignore 
/// this restriction in the same library where the `base` class 
/// or mixin is declared. Then subclasses in the same library 
/// will be reminded to implement the private methods
base class C {
  void _privateMethod() {
    print('I inherited from C');
  }
}

void callPrivateMethodC(C c) {
  c._privateMethod();
}

/// Can be implemented [INSIDE] its library
base class D implements C {
  @override
  void _privateMethod() {
    print('I inherited from D');
  }
}

void main() {
  // test();  // Runtime exception!
  callPrivateMethodC(D());  // OK
}
