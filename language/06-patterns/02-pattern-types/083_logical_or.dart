// Dart Patterns: Pattern types

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

void main() {
  /// A logical-or pattern separates subpatterns by `||` 
  /// and matches if any of the branches match. 
  /// Branches are evaluated left-to-right. 
  /// Once a branch matches, the rest are not evaluated:
  /// `subpattern1 || subpattern2`
  final color = Color.blue;
  var isPrimary = switch (color) {
    Color.red || Color.yellow || Color.blue => true,
    _ => false,
  };
  print('Is $color primary?: $isPrimary');
}
