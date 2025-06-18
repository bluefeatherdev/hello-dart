// Dart Patterns: Overview & usage
// ignore_for_file: pattern_never_matches_value_type, dead_code, unreachable_switch_case, unused_local_variable

// ...
class Color {
  final String name;

  const Color._(this.name);

  static const red = Color._('red');
  static const yellow = Color._('yellow');
  static const blue = Color._('blue');

  @override
  String toString() => 'Color.$name';
}

// ...
sealed class Shape {}

class Square implements Shape {
  final double size;

  Square(this.size);
}

class Circle implements Shape {
  final double size;

  Circle(this.size);
}

void main() {
  /// Every case clause contains a pattern. 
  /// This applies to [switch statements] and [expressions], 
  /// as well as [if-case statements]. 
  /// You can use [any kind of pattern] in a case.
  
  /// [Case patterns] are refutable. They allow control flow to either:
  /// - Match and destructure the object being switched on.
  /// - Continue execution if the object doesn't match.
    
  // The values that a pattern destructures in a case 
  //become local variables. Their scope is only within 
  // the body of that case:
  const first = 0;
  const last = 9;
  var obj = (3);
  switch (obj) {
    // Matches if 1 == obj.
    case 1:
      print('one');
    
    // Matches if the value of obj is between the
    // constant values of 'first' and 'last'.
    case >= first && <= last:
      print('in range');
    
    // Matches if obj is a record with two fields,
    // then assigns the fields to 'a' and 'b'.
    case (var a, var b):
      print('a = $a, b = $b');
    
    default:
      // ...
  }

  /// [Logical-or patterns] are useful for having multiple cases 
  /// share a body in switch expressions or statements:
  final color = Color.blue;
  var isPrimary = switch (color) {
    Color.red || Color.yellow || Color.blue => true,
    _ => false,
  };
  print('$color is primary: $isPrimary');

  /// Switch statements can have multiple cases share a body 
  /// [without using logical-or patterns], but they are still 
  /// uniquely useful for allowing multiple cases to share a [guard]:
  Shape shape = Circle(3.5);
  switch (shape) {
    case Square(size: var s) || Circle(size: var s) when s > 0:
      print('Non-empty symmetric shape');
    default:
      print('Empty or unsupported shape');
  }

  /// [Guard clauses] evaluate an arbitrary condition as part of a case, 
  /// without exiting the switch if the condition is false 
  /// (like using an [if] statement in the case body would cause):
  var pair = (3, 1);
  switch (pair) {
    case (int a, int b):
      if (a > b) print('First element greater');
    // If false, prints nothing and exits the switch.
    case (int a, int b) when a > b:
      // If false, prints nothing but proceeds to next case.
      print('First element greater');
    case (int a, int b):
      print('First element not greater');
  }
}
