/// Dart Keywords: [else]

// ignore_for_file: dead_code

/// `else` is used to handle the case contrary to a condition.
/// `else if`: allows you to chain multiple conditions.
/// `else` with [if-case]: useful for patterns that do not match.
void main() { 
  /// Classic [if-else] use:
  bool isRaining = true;
  bool isSnowing = false;

  if (isRaining) {
    print('It\'s raining');
  } else if (isSnowing) {
    print('It\'s snowing');
  } else {
    print('It\'s sunny');
  }

  /// `else` with [if-case]:
  var pair = [2, 3];
  if (pair case [int x, int y]) {
    print('Point: $x, $y');
  } else {
    print('Invalid format');
  }

  /// Use in conditional expressions ([ternary]):
  int age = 21;
  String message = 
    age >= 18 ? 'You\'re an adult' : 'You\'re not an adult';
  print(message);

  /// Use with [null-aware operator] and [else implicit]:
  String? name;
  print(name ?? '"name" is null');
}
