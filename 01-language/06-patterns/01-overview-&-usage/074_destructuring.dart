// Dart Patterns: Overview & usage
void main() {
  /// When an object and pattern match, 
  /// the pattern can then access the object's data 
  /// and extract it in parts. In other words, the pattern 
  /// [destructures] the object:
  
  var numList = [1, 2, 3];
  // List pattern [a, b, c] destructures the three elements from numList...
  var [a, b, c] = numList;
  // ...and assigns them to new variables.
  print(a + b + c); // Prints: 6

  /// You can nest [any kind of pattern] inside a destructuring pattern. 
  /// For example, this case pattern matches and destructures 
  /// a two-element list whose first element is ['a'] or ['b']:
  var list = ['b', c];
  switch (list) {
    case ['a' || 'b', var c]:
      print(c); // Prints: 3
  }
}
