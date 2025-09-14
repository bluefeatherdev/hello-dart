/// Dart Keywords: [interface]

/// The `interface` keyword was introduced in Dart 3.0 to provide explicit 
/// interface declarations, making it easier to define contracts without 
/// implying inheritance or implementation details.

/// Unlike using `abstract class` as an implicit interface, `interface` makes 
/// your intent crystal clear: “This is a contract, not a base class.”

/// 1. [Declaring an Interface]:
interface class Logger {
  void log(String message) {}
}

/// 2. [Implementing an Interface]:
class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('Log: $message');
  }
}

/// 3. [Combining with `abstract`]:
abstract interface class Shape {
  double area();
}

class Rectangle implements Shape {
  final double b;
  final double h;
  
  Rectangle(this.b, this.h);

  @override
  double area() {
    return b * h;
  }
}

/// 4. [Using with `implements` in multiple inheritance]:
interface class Flyable {
  void fly() {}
}

interface class Swimmable {
  void swim() {}
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() => print('Flying');

  @override
  void swim() => print('Swimming');
}

void main() { 
  /// 1. [Declaring an Interface]:
  final logger = Logger();
  print(logger);  // Instance of 'Logger'

  /// 2. [Implementing an Interface]:
  final consoleLogger = ConsoleLogger();
  consoleLogger.log('Keep it up!'); // Log: Keep it up!

  /// 3. [Combining with `abstract`]:
  final rectangle = Rectangle(2, 3);
  print(rectangle.area());  // 6.0

  /// 4. [Using with `implements` in multiple inheritance]:
  final duck = Duck();
  duck.fly();   // Flying
  duck.swim();  // Swimming
}
