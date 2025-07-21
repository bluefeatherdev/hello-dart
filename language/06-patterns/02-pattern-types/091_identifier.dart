// Dart Patterns: Pattern types
void main() {
  /// Identifier patterns may behave like a constant pattern 
  /// or like a variable pattern, depending on 
  /// the context where they appear:
  /// `foo`, `_`
  
  /// [Declaration] context: 
  /// declares a new variable with identifier name: 
  /// `var (a, b) = (1, 2);`
  
  /// [Assignment] context: 
  /// assigns to existing variable with identifier name: 
  /// `(a, b) = (3, 4);`
  
  /// [Matching] context: 
  /// treated as a named constant pattern (unless its name is _):
  const c = 1;
  switch (2) {
    case c:
      print('match $c');
    default:
      print('no match');  // Prints: no match
  }

  /// [Wildcard] identifier in any context: 
  /// matches any value and discards it: 
  var values = [1, 2, 3];
  switch (values) {
    case [_, var y, _]:
      print('the middle element is $y');
      // Prints: the middle element is 2
  }
}
