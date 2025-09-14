/// Dart Keywords: [required]

/// Let's dive into the versatile uses of the `required` keyword in Dart. 
/// It plays a crucial role in function parameters and constructors, 
/// especially with named parameters and null safety.

/// 1. [Named Parameters in Functions or Constructors]:
void greet({required String name}) {
  print('Hello, $name');
}

/// 2. [With Class Constructors]:
class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  @override
  String toString() => 'name: $name, age: $age';
}

/// 3. [Combining with `late` for Deferred Initialization]:
class Config {
  late final String apiKey;

  Config({required String apiKey}) {
    this.apiKey = apiKey;
  }
}

/// 4. [With Factory Constructors]:
class Shape {
  final double radius;

  Shape._(this.radius);

  factory Shape.circle({required double radius}) {
    return Shape._(radius);
  }
}

/// 5. [Mixins with `required` in Constructors]:
mixin Logger {
  void log(String message) {
    print('[Log]: $message');
  }
}

class Service with Logger {
  final String name;

  Service({required this.name});

  void start() {
    log('Service $name started!');
  }
}

/// 6. [Extension Types with required (Dart 3+)]:
extension type SecureString._(String _value) {
  String get masked => '*' * _value.length;

  void reveal() => print('Actual value: $_value');

  factory SecureString({required String value}) {
    if (value.isEmpty) throw ArgumentError('Value cannot be empty');
    return SecureString._(value);
  }
}

void main() { 
  /// 1. [Named Parameters in Functions or Constructors]:
  greet(name: 'Jesús'); // Hello, Jesús

  /// 2. [With Class Constructors]:
  final user1 = User(name: 'Elie', age: 20);
  print(user1); // name: Elie, age: 20

  /// 3. [Combining with `late` for Deferred Initialization]:
  final config = Config(apiKey: 'abc123');
  print(config.apiKey); // abc123

  /// 4. [With Factory Constructors]:
  final circle = Shape.circle(radius: 4);
  print(circle.radius); // 4.0

  /// 5. [Mixins with `required` in Constructors]:
  final apiService = Service(name: 'API');
  apiService.start(); // [Log]: Service API started!

  /// 6. [Extension Types with required (Dart 3+)]:
  final secret = SecureString(value: 'I love you!');
  print(secret.masked); // ***********
  secret.reveal();      // Actual value: I love you!
}
