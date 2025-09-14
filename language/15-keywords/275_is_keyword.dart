/// Dart Keywords: [is]

/// The `is` keyword in Dart is deceptively simple but quite powerful. 
/// It’s used for type checking, and its behavior can be extended or 
/// nuanced depending on context.

void main() { 
  /// 1. [Type Checking]:
  dynamic value = 'Love';
  if (value is String) {
    print('$value is a String'); // Love is a String
    print(value.runtimeType);    // String
  } 

  /// 2. [Negated Form: `is!`]:
  value = 23;
  if (value is! String) {
    print('$value is an int'); // 23 is an int
    print(value.runtimeType);  // int
  }

  /// 3. [Type Promotion]:
  Object? maybeNumber = 16;
  if (maybeNumber is int) {
    print(maybeNumber.isEven); // true
  }

  /// 4. [With Pattern Matching (Dart 3.0+)]:
  switch (value) {
    case int number when value.isEven:
      print('Is $number an even integer?: ${value.isEven}');  // false
    case int number when value.isOdd:
      print('Is $number an odd integer?: ${value.isOdd}');  // true
  }

  /// 5. [With Custom Types and Interfaces]:
  checkAnimal(Dog()); // It's a dog!
}

/// 5. [With Custom Types and Interfaces]:
class Animal {}
class Dog extends Animal {}

void checkAnimal(Animal a) {
  if (a is Dog) {
    print('It\'s a dog!');
  }
}
