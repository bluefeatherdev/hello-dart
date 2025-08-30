/// Playground: [Exploring Iterable]

/// [Inheritance]:
/// Inheritance is a mechanism where a new class, known as a subclass,
/// derives properties and behaviors (methods) from an existing class,
/// known as a superclass. This creates an [is-a] relationship.
///
/// For example, if you have a base class Animal, you can create a
/// derived class Owl that inherits from Animal. This means Owl is an
/// Animal and inherits its properties and methods.
class Animal {
  final String name;

  Animal(this.name);

  String speak() => '...';
}

class Owl extends Animal {
  Owl(super.name);

  @override
  String speak() => '${name} says Hoot!';
}

/// [Composition]:
/// Composition is a design principle where a class is composed of one
/// or more objects of other classes, establishing a [has-a] relationship.
/// Instead of inheriting from a base class, a class contains instances
/// of other classes that implement the desired functionality.
class Engine {
  String start() => 'Engine started!';
}

class Plane {
  final Engine engine = Engine();

  String start() => engine.start();
}

void main() {
  /// [Inheritance]:
  final animal = Animal('Unknown');
  print(animal.speak()); // output: ...

  final owl = Owl('Snowy Owl');
  print(owl.speak()); // output: Snowy Owl says Hoot!

  /// [Composition]:
  final engine = Engine();
  print(engine.start()); // output: Engine started!

  final plane = Plane();
  print(plane.start()); // output: Engine started!
}
