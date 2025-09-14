/// Dart Keywords: [get]

/// The `get` keyword defines a getter method, 
/// which allows you to access a property-like value from an object. 
/// It’s syntactic sugar for a method that looks like a field access.
import 'dart:math' show pi;

/// 1. [Computed Properties]:
class Circle {
  final double radius;
  Circle(this.radius);

  double get area => pi * radius * radius;
}

/// 2. [Read-only Access to Private Fields]:
class User {
  final String _name;
  User(this._name);

  String get name => _name;
}

/// 3. [Overriding `get` in Subclasses]:
class Animal {
  String get sound => '...';
}

class Owl extends Animal {
  @override
  String get sound => 'Hoot!';
}

/// 4. [Using `get` with `@override` for `hashCode`]:
class Point {
  final int x, y;
  Point(this.x, this.y);

  @override
  int get hashCode => Object.hash(x, y);
}

/// 5. [Abstract Getters]:
abstract class Shape {
  double get area;
}

class Square extends Shape {
  final double side;
  Square(this.side);

  @override
  double get area => side * side;
}

/// 6. [Getters with Side Effects (Not Recommended)]:
int counter = 0;
int get increment => ++counter;

void main() { 
  /// 1. [Computed Properties]:
  final circle = Circle(2);
  print(circle.area);  // 12.566370614359172

  /// 2. [Read-only Access to Private Fields]:
  final user = User('Jesús');
  print(user.name); // Jesús
  
  /// 3. [Overriding `get` in Subclasses]:
  final animal = Animal();
  print(animal.sound);  // ...

  final owl = Owl();
  print(owl.sound); // Hoot!

  /// 4. [Using `get` with `@override` for `hashCode`]:
  final point = Point(1, 5);
  print(point.hashCode);  // e.g. 3111066

  /// 5. [Abstract Getters]:
  final square = Square(2);
  print(square.area); // 4.0

  /// 6. [Getters with Side Effects (Not Recommended)]:
  print(counter);   // 0
  print(increment); // 1 
  print(counter);   // 1
}
