/// Dart Classes & Objects: Extend a class

/// To detect or react whenever code attempts to use 
/// a non-existent method or instance variable, 
/// you can override `noSuchMethod()`:
class A {
  // Unless you override noSuchMethod, using a
  // non-existent member results in a NoSuchMethodError.
  @override
  void noSuchMethod(Invocation invocation) {
    print(
      'You tried to use a non-existent member: '
      '${invocation.memberName}',
    );
  }

  /// You [can't invoke] an unimplemented method 
  /// unless one of the following is true:
  /// - The receiver has the static type `dynamic`.
  /// - The receiver has a static type that defines 
  ///   the unimplemented method (abstract is OK), 
  ///   and the dynamic type of the receiver has 
  ///   an implementation of `noSuchMethod()` that's different 
  ///   from the one in class `Object`.
}

void main() {
  dynamic a = A();
  print(a); // Instance of 'A'

  a.fly(); // You tried to use a non-existent member: Symbol("fly")
  a.someValue = 42; // You tried to use a non-existent member: Symbol("someValue=")
  var result = a.readMind(); // You tried to use a non-existent member: Symbol("readMind")
  print(result); // null
}
