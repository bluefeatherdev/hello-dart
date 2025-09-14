/// Dart Keywords: [void]

/// The `void` keyword in Dart is used to indicate
/// that a function  or a method does not return a value.

/// 1. [Function Return Type]:
void showMessage(String message) {
  print(message);
}

/// 2. [Method Return Type in a Class]:
class Greet {
  void sayHello(String name) {
    print('Hello, $name!');
  }
}

/// 3. [As a Type in Generics]:
Future<void> fetchData() async {
  // Simulating an asynchronous operation...
  await Future.delayed(Duration(seconds: 1));
  print('Data fetched successfully!');
}

/// 4. [For Unnamed Parameters in Function Expressions]:
void listGenerator() {
  // Using void as a parameter type (less common)
  List.generate(3, (int index, [void _]) => print('(void) Item $index'));

  // The more common way using an underscore
  List.generate(3, (int index, [dynamic _]) => print('(dynamic) Item $index'));
}

void main() async {
  /// 1. [Function Return Type]:
  showMessage('Hello, Dart!'); // Hello, Dart!

  /// 2. [Method Return Type in a Class]:
  var greeter = Greet();
  greeter.sayHello('Jesús'); // Hello, Jesús!

  /// 3. [As a Type in Generics]:
  await fetchData(); // Data fetched successfully!

  /// 4. [For Unnamed Parameters in Function Expressions]:
  listGenerator(); // ...
}
