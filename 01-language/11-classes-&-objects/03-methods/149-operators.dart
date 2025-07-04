/// Dart Classes & Objects: Methods

/// Most operators are instance methods with special names. 
/// Dart allows you to define operators with the following names:
/// `<`, `>`, `<=`, `>=`, `==`, `~`,
/// `-`, `+`, `/`, `~/`, `*`, `%`,
/// `|`, `ˆ`, `&`, `<<`, `>>>`, `>>`,
/// `[]=`, `[]`

/// You may have noticed that some [operators], like `!=`, 
/// aren't in the list of names. These operators aren't instance methods. 
/// Their behavior is built in to Dart.

/// To declare an operator, use the built-in identifier [operator] 
/// then the operator you are defining. The following example defines 
/// vector addition (`+`), subtraction (`-`), and equality (`==`):
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
    other is Vector && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hash(x, y);
}

void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));

  print(v + w == Vector(4, 5)); // Prints: true
  print(v - w == Vector(0, 1)); // Prints: true
}
