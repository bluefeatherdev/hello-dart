// Dart Patterns: Pattern types
class Rect {
  final num width;
  final num height;
  Rect(this.width, this.height);
}

class Point {
  final num x;
  final num y;
  Point(this.x, this.y);
}

void main() {
  /// Object patterns check the matched value against a given named type 
  /// to destructure data using getters on the object's properties. 
  /// They are [refuted] if the value doesn't have the same type.
  /// `SomeClass(x: subpattern1, y: subpattern2)`
  var shape = Rect(2, 3);
  switch (shape) {
    // Matches if shape is of type Rect, 
    // and then against the properties of Rect.
    case Rect(width: var w, height: var h):
      print(w); // Prints: 2
      print(h); // Prints: 3
  }

  /// The getter name can be omitted and inferred from the 
  /// [variable pattern] or [identifier pattern] in the field subpattern:
  var Point(:x, :y) = Point(1, 2);
  print(x); // Prints: 1
  print(y); // Prints: 2

  /// Object patterns don't require the pattern to match the entire object. 
  /// If an object has extra fields that the pattern doesn't destructure, 
  /// it can still match.
}
