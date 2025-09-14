/// Dart Keywords: [implements]

/// The `implements` keyword is used to declare that a class must fulfill 
/// the contract (i.e., the API) of one or more interfaces. This allows 
/// a class to reuse the structure of another class or interface without 
/// inheriting its implementation.

/// 1. [Implementing a Single Interface]:
class Person {
  String greet(String name) => 'Hello, $name!';
}

class Robot implements Person {
  @override
  String greet(String name) => 'Beep boop, $name.';
}

/// 2. [Implementing Multiple Interfaces]:
abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() => print('Flapping wings');

  @override
  void swim() => print('Paddling in water');
}

/// 3. [Implementing Implicit Interfaces]:
class Car {
  void drive() => print('driving');
}

class ToyCar implements Car {
  @override
  void drive() => print('Pretend driving');
}

/// 4. [Implementing Interfaces with Private Members]:
class People {
  final String _name;
  People(this._name);

  String greet(String who) => 
    'Hello, $who. I am $_name';
}

class Impostor implements People {
  @override
  String get _name => ''; // Provide a dummy implementation

  @override
  String greet(String who) =>
    'Hi $who. Do you know who I am?';
}

void main() { 
  /// 1. [Implementing a Single Interface]:
  final person = Person();
  print(person.greet('Jesús')); // Hello, Jesús!

  final robot = Robot();
  print(robot.greet('Jesús'));  // Beep boop, Jesús.

  /// 2. [Implementing Multiple Interfaces]:
  final duck = Duck();
  duck.fly();   // Flapping wings
  duck.swim();  // Paddling in water

  /// 3. [Implementing Implicit Interfaces]:
  final car = Car();
  car.drive(); // driving

  final toyCar = ToyCar();
  toyCar.drive(); // Pretend driving

  /// 4. [Implementing Interfaces with Private Members]:
  final people = People('Jesús');
  print(people.greet('Brais'));   // Hello, Brais. I am Jesús

  final impostor = Impostor();
  print(impostor.greet('Brais')); // Hi Brais. Do you know who I am?
}
