// Dart Patterns: Overview & usage
void main() {
  /// You can use a [pattern variable declaration] anywhere 
  /// Dart allows local variable declaration. 
  /// The pattern matches against the value on 
  /// the right of the declaration. Once matched, 
  /// it destructures the value and binds it 
  /// to new local variables:
  
  // Declares new variables a, b, and c.
  var (a, [b, c]) = ('str', [1, 2]);
  print('$a, $b, $c');  // Prints: str, 1, 2

  /// A pattern variable declaration must start with 
  /// either [var] or [final], followed by a pattern.
}
