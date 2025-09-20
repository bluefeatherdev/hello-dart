/// Dart Core Libraries: [dart:core]: Printing to the console

/// The top-level `print()` method takes a single argument (any `Object`)
/// and displays that object's string value (as returned by `toString()`)
/// in the console:

void main() {
  /// 1. [Printing object values in the console]:
  Object myString = 'Hello, Dart!';
  print(myString); // Hello, Dart!

  String myName = 'Jesús';
  print('My name is $myName'); // My name is Jesús

  int favoriteNumber = 23;
  print('Favorite number: $favoriteNumber'); // Favorite number: 23
  print('Is $favoriteNumber odd?: ${favoriteNumber.isOdd}'); // Is 23 odd?: true

  List? nullableObject = null;
  print('nullableObject: $nullableObject'); // nullableObject: null

  nullableObject = [1, 2, 3];
  print('nullableObject: $nullableObject'); // nullableObject: [1, 2, 3]
}
