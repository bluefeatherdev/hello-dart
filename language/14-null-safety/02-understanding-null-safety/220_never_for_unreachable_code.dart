/// Dart Null Safety: [Understanding null safety]

/// So what does it mean for an expression to have type `Never`? 
/// It means that expression can never successfully finish evaluating. 
/// It must throw an exception, abort, or otherwise ensure that the 
/// surrounding code expecting the result of the expression never runs.

/// In fact, according to the language, the static type of a `throw` 
/// expression is `Never`. The type `Never` is declared in the core libraries 
/// and you can use it as a type annotation. Maybe you have a helper 
/// function to make it easier to throw a certain kind of exception:

// Using null safety
Never wrongType(String type, Object value) {
  throw ArgumentError('Expected $type, but was ${value.runtimeType}.');
}

/// You might use it like so:

// Using null safety:
class Point {
  final int x, y;

  Point(this.x, this.y);

  Point operator +(Object other) {
    if (other is int) return Point(x + other, y + other);
    if (other is! Point) wrongType('int | Point', other);

    print('Adding two Point instances together: $this + $other');
    return Point(x + other.x, y + other.y);
  }

  // toString, hashCode, and other implementations...
} 

/// Using `Never` in your own APIs lets you 
/// extend Dart's reachability analysis.

void main() {
  // wrongType('int', 'string');  // Expected int, but was String.
  Point a = Point(1, 2);
  Point b = Point(3, 4);

  print((a + b).x); // 4
  print((a + b).y); // 6

  print((a + 5).x); // 6
  print((a + 5).y); // 7

  // print(b + 'hello'); // Expected int | Point, but was String.
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
