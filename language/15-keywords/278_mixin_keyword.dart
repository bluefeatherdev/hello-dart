/// Dart Keywords: [mixin]

/// In Dart, `mixin` is a keyword used to define a reusable set of 
/// methods and properties that can be inherited by multiple classes 
/// without using traditional inheritance. Mixins promote composition 
/// over inheritance and are ideal for sharing behavior across 
/// unrelated classes.

/// 1. [Declaring a Mixin]:
mixin Logger {
  void log(String message) {
    print('LOG: $message');
  }
}

/// 2. [Applying a Mixin to a Class]:
class Service with Logger {
  void fetchData() {
    log('Fetching data...');
  }
}

/// 3. [Restricting Mixin Usage with on]:
mixin Cacheable on Service {
  void cache() {
    log('Caching...');
  }
}

class AnotherService extends Service {
  @override
  void fetchData() {
    log('Fetching and pulling data...');
  }
}

/// 4. [Combining Mixins with `implements`]:
abstract class Printable {
  void printData(String message);
}

mixin Printer implements Printable {
  @override
  void printData(String message) {
    print('Printing: $message');
  }
} 

class Console with Printer {
  void showMessage() {
    printData('Have a good day!');
  }
}

/// 5. [Using Mixins in Extension Types (Dart 3.0+)]:
extension type Wrapper<T>(T value) {
  void show() => print(value);
}

mixin Showable {
  void showTwice(Wrapper<int> wrapper) {
    wrapper.show();
    wrapper.show();
  }
}

class ShowNumbers with Showable {
  final Wrapper<int> wrapper = Wrapper(23);
  void run() {
    showTwice(wrapper);
  }
}

void main() { 
  /// 1. [Declaring a Mixin]:
  final x = Logger;
  print(x); // Logger
  print(x.runtimeType); // Type

  /// 2. [Applying a Mixin to a Class]:
  final service = Service();
  service.fetchData();  // LOG: Fetching data...

  /// 3. [Restricting Mixin Usage with on]:
  final anotherService = AnotherService();
  anotherService.fetchData();  // LOG: Fetching and pulling data... 

  /// 4. [Combining Mixins with `implements`]:
  final console = Console();
  console.showMessage();  // Printing: Have a good day!

  /// 5. [Using Mixins in Extension Types (Dart 3.0+)]:
  final wrapper = ShowNumbers();
  wrapper.run();  // 23 (twice)
}
