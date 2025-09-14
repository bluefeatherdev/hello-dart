/// Dart Keywords: [true]

/// In Dart, the keyword `true` is a boolean literal that represents
/// the logical value of truth. It’s used in a variety of contexts where
/// boolean expressions are required.

// ignore_for_file: dead_code

void main() {
  /// 1. [Conditional Statements]:
  if (true) {
    print('This will always print!');
  }

  /// 2. [Boolean Variables]:
  bool isLoggedIn = true;
  print(isLoggedIn); // true
  print(isLoggedIn.runtimeType); // bool

  /// 3. [Return Values]:
  print(isEven(16)); // true
  print(!isEven(23)); // true (not false -> true)

  /// 4. [Logical Expressions]:
  bool a = true;
  bool b = false;

  print(a && b); // false (and)
  print(a || b); // true (or)
  print(!a); // false (not)
  print(!b); // true (not)

  /// 5. [Assertions]:
  assert(true); // Passes silently

  /// 6. [Default Values]:
  final settings = Settings();
  print(settings.darkMode); // true

  /// 7. [Loop Conditions]:
  int i = 0;
  while (true) {
    if (i == 4) break;
    print('i: $i'); // ...
    i++;
  }

  /// 8. [Ternary Operator]:
  String status = true ? 'Active' : 'Inactive';
  print(status); // Active
}

/// 3. [Return Values]:
bool isEven(int number) {
  return number % 2 == 0;
}

/// 6. [Default Values]:
class Settings {
  bool darkMode;
  Settings({this.darkMode = true});
}
