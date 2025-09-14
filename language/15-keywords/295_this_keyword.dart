/// Dart Keywords: [this]

/// In Dart, `this` refers to the current instance of a class. 
/// It’s used to access instance variables, methods, and constructors 
/// from within the class itself.

/// 1. [Accessing Instance Variables]:
class Person {
  String? name;

  Person(String name) {
    this.name = name; // Resolves ambiguity
  }
}

/// 2. [Calling Instance Methods]:
class Calculator {
  int add(int a, int b) => a + b;

  int compute() => this.add(2, 3);  // Optional but explicit
}

/// 3. [Named Constructors]:
class Point {
  int x, y;

  Point(this.x, this.y);

  Point.origin() : this(0, 0);  // Redirects to main constructor

  @override
  String toString() => 'Point($x, $y)';
}

/// 4. [Cascade Notation with `this`]:
class Builder {
  Builder setA() {
    print('A set');
    return this;  // returns a Builder object
  }

  Builder setB() {
    print('B set');
    return this;  // returns a Builder object
  }

  /// Cascading with `this`
  void build() => this.setA().setB(); 
}

/// 5. [Passing `this` as an Argument]:
class Logger {
  void log(Object obj) => print(obj);
}

class Service {
  String name;

  Service(this.name);

  void report(Logger logger) {
    logger.log(this); // Passes current instance
  }

  @override
  String toString() => 'Service: $name';
}

/// 6. [Extension Methods (Contextual Use)]:
extension StringUtils on String {
  String shout() => this.toUpperCase() + '!';
}

void main() { 
  /// 1. [Accessing Instance Variables]:
  final person = Person('Jesús');
  print(person.name); // Jesús

  /// 2. [Calling Instance Methods]:
  final calculator = Calculator();
  print(calculator.add(2, 3));  // 5
  print(calculator.compute());  // 5

  /// 3. [Named Constructors]:
  print(Point(2, 3));     // Point(2, 3)
  print(Point.origin());  // Point(0, 0)

  /// 4. [Cascade Notation with `this`]:
  final builder = Builder();
  builder.build();  // A set, B set

  /// 5. [Passing `this` as an Argument]:
  final logger = Logger();
  final service = Service('API');
  logger.log('Hello');    // Hello
  service.report(logger); // Service: API

  /// 6. [Extension Methods (Contextual Use)]:
  print('Hello'.shout());  // HELLO!
}
