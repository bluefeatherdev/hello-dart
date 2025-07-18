// Dart Patterns: Pattern types
void main() {
  /// Variable patterns bind new variables to values that have been 
  /// matched or destructured. They usually occur as part of 
  /// a [destructuring pattern] to capture a destructured value.
  /// `var bar`, `String str`, `final int _`
  
  /// The variables are in scope in a region of code 
  /// that is only reachable when the pattern has matched.
  switch ((1, 2)) {
    // 'var a' and 'var b' are variable patterns 
    // that bind to 1 and 2, respectively.
    case (var a, var b):
      print(a); // Prints: 1
      print(b); // Prints: 2
  }

  /// A [typed] variable pattern only matches if the matched value 
  /// has the declared type, and fails otherwise:
  switch ((1, 2)) {
    // Does not match.
    // case (int a, String b):
      // ...
    // Does match.
    case (int a, int b):
      print(a); // Prints: 1
      print(b); // Prints: 2
  }
}
