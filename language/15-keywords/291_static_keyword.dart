/// Dart Keywords: [static]

/// In Dart, `static` is used to define class-level members—meaning 
/// the member belongs to the class itself, not to any instance of 
/// the class. This is useful for constants, utility methods, or 
/// shared state that doesn’t depend on object instantiation.

/// 1. [Static Variables]:
class Counter {
  static int total = 0;

  Counter() {
    total++;
  }
}

/// 2. [Static Methods]:
class MathUtils {
  static int square(int x) => x * x;
}

/// 3. [Static Constants]:
class AppConfig {
  static const String appName = 'MyApp';
  static const int maxUsers = 100;
}

void main() { 
  /// 1. [Static Variables]:
  for (var i = 0; i < 3; i++) {
    print('Counter: ${Counter.total}');
    Counter();
  }

  /// 2. [Static Methods]:
  print(MathUtils.square(5)); // 25

  /// 3. [Static Constants]:
  print(AppConfig.appName);   // MyApp
  print(AppConfig.maxUsers);  // 100
}
