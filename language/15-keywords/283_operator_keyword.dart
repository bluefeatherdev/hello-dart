/// Dart Keywords: [operator]

/// In Dart, the `operator` keyword is used to define custom behavior for 
/// operators when applied to instances of a class. This allows you to 
/// overload operators like `+`, `-`, `==,` `[]`, and many others to make your 
/// classes behave more intuitively or mathematically expressive.

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
  
  @override
  String toString() => 'Vector($x, $y)';
}

void main() { 
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  print(v + w); // Vector(4, 5)
  print(v - w); // Vector(0, 1)

  print(v + w == Vector(4, 5)); // true
  print(v - w == Vector(0, 1)); // true

  assert(v + w == Vector(4, 5)); // true
  assert(v - w == Vector(0, 1)); // true
}
