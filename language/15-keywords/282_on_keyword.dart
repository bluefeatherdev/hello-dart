/// Dart Keywords: [on]

/// The `on` keyword in Dart is quite versatile, 
/// and its meaning depends on the context in which it's used. 
/// Here's a breakdown of all its primary uses:

/// 2. [Mixin Application (`class A on B`)]:
abstract class Service {
  String get serviceName;
  void startService();
}

mixin Logger on Service {
  void logStart() {
    print('Starting service: $serviceName');
    startService();
  }
}

class AuthService extends Service with Logger {
  @override
  String get serviceName => 'Authentication';

  @override
  void startService() {
    print('Auth service started');
  }
}

/// 3. [Extension Methods (Dart 3.0+)]:
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

void main() { 
  /// 1. [Exception Handling (`try` / `on` / `catch`)]:
  try {
    List list = [1, 2, 3];
    print(list[3]);
  } on RangeError catch (e) {
    print(e); // ...
  }

  /// 2. [Mixin Application (`class A on B`)]:
  final auth = AuthService();
  auth.logStart();  // ...

  /// 3. [Extension Methods (Dart 3.0+)]:
  print('23'.parseInt());    // 23
  print('23'.parseDouble()); // 23.0
}
