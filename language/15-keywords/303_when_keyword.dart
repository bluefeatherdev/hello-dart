/// Dart Keywords: [when]

/// In Dart, the `when` keyword isn't a standalone feature like in Kotlin,
/// but since Dart 3.0, it has been introduced as part of enhanced pattern
/// matching within switch statements.

/// 1. [Guard Clauses with `when`]:
String checkNumber(int number) {
  switch (number) {
    case int n when n % 2 == 0:
      return 'Even number';
    case int n when n % 2 != 0:
      return 'Odd number';
    case int n when n == 0:
      return 'Number is zero';
    default:
      return 'Unknown';
  }
}

/// 2. [Record Pattern Matching]:
String getPointInfo((int, int) point) {
  switch (point) {
    case (int x, int y) when x == 0 && y == 0:
      return 'Origin: (x: $x, y: $y)';
    case (int x, int y) when x == 0:
      return 'On the Y-axis: (x: $x, y: $y)';
    case (int x, int y) when y == 0:
      return 'On the X-axis: (x: $x, y: $y)';
    default:
      return 'In a quadrant';
  }
}

/// 3. [Object Pattern Matching]:
class User {
  final String name;
  final int age;
  const User(this.name, this.age);
}

String describeUser(User user) {
  switch (user) {
    case User(name: 'Link', age: int age) when age > 20:
      return 'A hero of Hyrule, and an adult!';
    case User(name: 'Link'):
      return 'A hero of Hyrule!';
    case User(name: String name):
      return 'A user named $name';
  }
}

void main() {
  /// 1. [Guard Clauses with `when`]:
  print(checkNumber(16)); // Even number
  print(checkNumber(23)); // Odd number
  print(checkNumber(0)); // Even number
  print(checkNumber(-3)); // Odd number

  /// 2. [Record Pattern Matching]:
  print(getPointInfo((0, 0))); // Origin: (x: 0, y: 0)
  print(getPointInfo((0, 5))); // On the Y-axis: (x: 0, y: 5)
  print(getPointInfo((5, 0))); // On the X-axis: (x: 5, y: 0)
  print(getPointInfo((5, 5))); // In a quadrant

  /// 3. [Object Pattern Matching]:
  final adultLink = User('Link', 23);
  final youngLink = User('Link', 19);
  final zora = User('Zora', 300);

  print(describeUser(adultLink)); // A hero of Hyrule, and an adult!
  print(describeUser(youngLink)); // A hero of Hyrule!
  print(describeUser(zora)); // A user named Zora
}
