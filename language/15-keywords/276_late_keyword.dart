/// Dart Keywords: [late]

/// The `late` keyword tells the Dart compiler that a variable 
/// will be initialized later, but not null when accessed. It’s a way 
/// to defer initialization while still benefiting from null safety.

/// 1. [Lazy Initialization]:
late String description;

void setup() {
  description = 'Initialized during setup';
}

/// 2. [Lazy Evaluation with Getters]:
late final String heavyComputation = computeSomething();

String computeSomething() {
  print('Computing...');
  return 'Result';
}

/// 3. [Dependency Injection / Initialization Outside Constructor]:
class Service {
  late Database db;

  void init(Database injectedDb) {
    db = injectedDb;
  }

  void useService() {
    db.connect();
  }
}

class Database {
  final String name;

  Database(this.name);

  void connect() {
    print('Connected to $name');
  }
} 

void main() { 
  /// 1. [Lazy Initialization]:
  // print(description); Error
  setup();
  print(description); // Initialized during setup

  /// 2. [Lazy Evaluation with Getters]:
  print(heavyComputation);  // ...

  /// 3. [Dependency Injection / Initialization Outside Constructor]:
  final dbInstance = Database('MySQL');
  final service = Service();

  service.init(dbInstance);
  service.useService(); // Connected to MySQL
}
