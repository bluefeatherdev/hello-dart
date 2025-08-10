/// Playground: [User input]

/// In Dart, you can handle user input using the `stdin.readLineSync()` 
/// method from the dart:io library. Here's how you can take input 
/// for different data types:
import 'dart:io';

void main() {
  /// 1. `String` input
  print('Enter your name:');
  String? name = stdin.readLineSync();
  print('Your name is: $name');

  /// 2. `int` input
  print('Enter a number:');
  int? number = int.parse(stdin.readLineSync()!);
  print('Your number is: $number');

  /// 3. `double` input
  print('Enter a decimal number:');
  double? decimal = double.parse(stdin.readLineSync()!);
  print('Your decimal number is: $decimal');

  /// Always use `int.parse()` or `double.parse()` 
  /// to convert string input to numbers.
  
  /// The `!` operator is used to handle null safety, 
  /// ensuring the input is not null. If you're unsure 
  /// about the input, consider adding error handling.
}
