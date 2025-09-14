/// Dart Keywords: [final]

/// `final` indicates that a variable can only be assigned once.
/// The assignment can occur in execution time (runtime), 
/// not necessarily in compilation time. Once assigned, 
/// you cannot change the reference that keeps the variable.

/// Note: If the variable points to a mutable object, 
/// internal properties can change.

/// 2. [Immutable instance variables]
class User {
  final int id;
  final String name;

  User(this.id, this.name);

  @override
  String toString() => 'id: $id, name: $name';
}

/// 3. [`late final` variables]
class Config {
  late final String apiURL;

  void init() {
    apiURL = 'https://example.com';
  }
}

/// 5. [`static final` variables]
class AppConfig {
  static final startTime = DateTime.now();
}

/// 6. [top-level variables]
final appVersion = '1.0.0';

void main() { 
  /// 1. [Immutable local variables]
  final username = 'Jesús';
  // username = 'BlueFeatherDev'; // Error
  print(username);  // Jesús

  /// 2. [Immutable instance variables]
  final user = User(15, 'BlueFeatherDev');
  print(user);  // id: 15, name: BlueFeatherDev

  /// 3. [`late final` variables]
  final setAPI = Config();
  setAPI.init();
  print(setAPI.apiURL); // https://example.com

  /// 4. [With constant values]
  final mutableList = <int>[1, 2, 3];
  mutableList.add(4); // OK
  print(mutableList); // [1, 2, 3, 4]

  final immutableList = const <int>[1, 2, 3];
  // immutableList.add(4); // Runtime error
  print(immutableList); // [1, 2, 3]

  /// 5. [`static final` variables]
  print(AppConfig.startTime); // e.g. 2025-08-14 13:16:38.276945

  /// 6. [top-level variables]
  print('App Version: $appVersion');  // App Version: 1.0.0
}
