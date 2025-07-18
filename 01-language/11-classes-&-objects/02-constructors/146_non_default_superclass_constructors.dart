/// Dart Classes & Objects: Constructors

/// Dart executes constructors in the following order:
///  1. initializer list
///  2. superclass's unnamed, no-arg constructor
///  3. main class's no-arg constructor


/// If the superclass lacks an unnamed, 
/// no-argument constructor, 
/// call one of the constructors in the superclass. 
/// Before the constructor body (if any), 
/// specify the superclass constructor after a colon (`:`).

///  In the following example, the `Employee` class constructor 
/// calls the named constructor for its superclass, `Person`. 
class Person {
  String? firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson().
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }

  /// As Dart evaluates the arguments to the superclass constructor 
  /// before invoking the constructor, an argument can be an expression 
  /// like a function call.
  /// ```dart
  /// Employee() : super.fromJson(fetchDefaultData());
  /// // ...
  /// ```
  
  /// Arguments to the superclass constructor can't access `this`. 
  /// For example, arguments can call [static] methods 
  /// but not [instance] methods.
}

void main() {
  var employee = Employee.fromJson({});
  print(employee);
  // Prints:
  // in Person
  // in Employee
  // Instance of 'Employee' 
}
