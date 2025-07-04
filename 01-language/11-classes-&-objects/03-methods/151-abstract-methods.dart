/// Dart Classes & Objects: Methods

/// Instance, getter, and setter methods can be abstract, 
/// defining an interface but leaving its implementation up to other classes. 
/// Abstract methods can only exist in [abstract classes] or [mixins].

/// To make a method abstract, use a semicolon (`;`) 
/// instead of a method body:

abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); //Define an abstract method.
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
    print('Task completed!');
  }
}

void main() {
  Doer doer = EffectiveDoer();  // Polymorphism: abstract class is used as type
  doer.doSomething(); // Prints: Task completed!
}
