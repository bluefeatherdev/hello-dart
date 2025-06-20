// Dart Patterns: Pattern types
// ignore_for_file: unused_local_variable

void main() {
  /// Like parenthesized expressions, parentheses in a pattern 
  /// let you control [pattern precedence] and insert a lower-precedence 
  /// pattern where a higher precedence one is expected.
  /// `(subpattern)`
  
  /// For example, imagine the boolean constants `x`, `y`, and `z` 
  /// equal `true`, `true`, and `false`, respectively. 
  /// Though the following example resembles boolean 
  /// expression evaluation, the example matches patterns:
  var values = (true, true, false);
  var result = switch (values) {
    // x || y => true
    (var x, var y, var z) when x || y => 'matches true',

    // x || y && z => true
    (var x, var y, var z) when x || y && z => 'matches true',
    
    // x || (y && z) => true
    (var x, var y, var z) when x || (y && z) => 'matches true',
    
    // (x || y) && z => false
    (var x, var y, var z) when (x || y) && z => 'matches nothing',

    // fallback
    _ => 'no match',
  };

  print(values);  // Prints: (true, true, false)
  print(result);  // Prints: matches true
}
