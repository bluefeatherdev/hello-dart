// Dart Types: Generics

/// A common use case is ensuring that a type is non-nullable 
/// by making it a subtype of [Object] 
/// (instead of the default, [Object?]):
class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}

/// You can use [extends] with other types besides [Object]:
class SomeBaseClass {
  // ...
}

class Foo2<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo2<$T>";
}

class Extender extends SomeBaseClass {
  // ...
}
void main() {
  /// It's OK to use [SomeBaseClass] 
  /// or any of its subtypes as the generic argument:
  var someBaseClassFoo2 = Foo2<SomeBaseClass>();
  var extenderFoo = Foo2<Extender>;

  print(someBaseClassFoo2); // Prints: Instance of 'Foo2<SomeBaseClass>'
  print(extenderFoo); // Prints: Foo2<Extender>

  // It's also OK to specify no generic argument:
  var foo2 = Foo2();
  print(foo2);  // Prints: Instance of 'Foo2<SomeBaseClass>'

  /// Specifying any non-[SomeBaseClass] type results in an error:
  // var foo3 = Foo2<Object>;
  // print(foo3);
}
