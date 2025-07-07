/// Dart Classes & Objects: Mixins

/// Declaring abstract members also allows you 
/// to access state on the subclass of a mixin, 
/// by calling getters which are defined as abstract on the mixin:

/// Can be applied to any type with a [name] property and provides an
/// implementation of [hashCode] and operator `==` in terms of it.
mixin NameIdentify {
  String get name;

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(other) => 
    other is NameIdentify && name == other.name;
}

class Person with NameIdentify {
  final String name;

  Person(this.name);
}

void main() {
  var p1 = Person('John');
  var p2 = Person('Ellie');
  var p3 = Person('John');
  var p4 = Person('Ellie');

  print(p1 == p2);  // false
  print(p3 == p4);  // false
  print(p1 == p3);  // true
  print(p2 == p4);  // true

  final personSet1 = <Person>{p1, p3};
  final personSet2 = <Person>{p2, p4};
  final personSet3 = <Person>{p1, p2, p3, p4};

  print(personSet1.length); // 1
  print(personSet2.length); // 1
  print(personSet3.length); // 2
}
