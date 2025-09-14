/// Dart Keywords: [switch]

/// The `switch` keyword in Dart is used to perform conditional 
/// branching based on the value of an expression. It’s a control 
/// flow construct that allows you to compare a single value against 
/// multiple possible cases.

void main() { 
  /// 1. [Using `switch` with `String` values]:
  String language = 'es';
  switch (language) {
    case 'en':
      print('Hello');
      break;
    case 'es':
      print('Hola');
      break;
    case 'fr':
      print('Bonjour');
      break;
    default:
      print('Language not supported');
  }
  // Output: Hola

  /// 2. [Using `switch` with `enum` values]:
  Status status = Status.approved;
  switch (status) {
    case Status.pending:
      print('Waiting...');
      break;
    case Status.approved:
      print('Approved!');
      break;
    case Status.rejected:
      print('Rejected.');
      break;
  }
  // Output: Approved!

  /// 3. [Fall-through behavior (Dart 2.x)]:
  int value = 1;
  switch (value) {
    case 1:
      print('One');
      continue next;
    next: case 2:
      print('Two');
      break;
  }
  // Output: One
  // Output: Two

  /// 4. [Pattern Matching (Dart 3+)]:
  dynamic obj = 'Hello';
  switch (obj) {
    case int i when i > 0:
      print('Positive integer: $i');
    case int i when i < 0:
      print('Negative integer: $i');
    case int i when i == 0:
      print('Zero: $i');
    case String s:
      print('String: $s');
    default:
      print('Unknown type');
  }
  // Output: String: Hello

  /// 5. [Exhaustive `switch` with `sealed` classes]:
  draw(Circle()); // Drawing a circle
  draw(Square()); // Drawing a square
}

/// 2. [Using `switch` with `enum` values]:
enum Status { pending, approved, rejected }

/// 5. [Exhaustive `switch` with `sealed` classes]:
sealed class Shape {}
class Circle extends Shape {}
class Square extends Shape {}

void draw(Shape shape) {
  switch (shape) {
    case Circle():
      print('Drawing a circle');
    case Square():
      print('Drawing a square');
  }
}
