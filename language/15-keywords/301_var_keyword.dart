/// Dart Keywords: [var]

/// In Dart, `var` is used to declare a variable without explicitly
/// specifying its type. The compiler infers the type based on the
/// assigned value.

void main() {
  /// 1. [Local Variable Declaration]:
  var greeting = 'Hello!';
  print(greeting); // Hello!
  print(greeting.runtimeType); // String

  /// 2. [Loop Variables]:
  for (var i = 0; i < 3; i++) {
    print(i); // Prints 0 to 2
  }

  var numbers = [0, 1, 2];
  for (var number in numbers) {
    print(number); // Prints each number
  }

  /// 3. [Collections]:
  var fruits = {'apple', 'banana'}; // List<String>
  var scores = {'Jesús': 90, 'Elie': 95}; // Map<String, int>

  print(fruits); // {apple, banana}
  print(fruits.runtimeType); // _Set<String>

  print(scores); // {Jesús: 90, Elie: 95}
  print(scores.runtimeType); // _Map<String, int>

  /// 4. [Anonymous Functions and Closures]:
  var sayHi = () => print('Hi!');
  sayHi(); // Hi!

  /// 5. [Inside Classes (Local Scope Only)]:
  Person.introduce(); // It's nice to meet you!
  print(Animal.type); // Owl
}

/// 5. [Inside Classes (Local Scope Only)]:
class Person {
  static void introduce() {
    var message = 'It\'s nice to meet you!';
    print(message);
  }
}

class Animal {
  static var type = 'Owl';
}
