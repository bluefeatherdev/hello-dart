// Dart Patterns: Pattern types

// ...
String asciiCharType(int char) {
  const space = 32;
  const zero = 48;
  const nine = 57;

  return switch (char) {
    < space => 'control',
    == space => 'space',
    > space && < zero => 'punctuation',
    >= zero && <= nine => 'digit',
    _ => '',
  };
}

void main() {
  /// Relational patterns compare the matched value to a 
  /// given constant using any of the equality or relational operators: 
  /// `==`, `!=`, `<`, `>`, `<=`, and `>=`.
  /// `== expression`
  /// `< expression`

  /// The pattern matches when calling the appropriate operator 
  /// on the matched value with the constant as an argument returns `true`.
  
  /// Relational patterns are useful for matching on numeric ranges, 
  /// especially when combined with the logical-and pattern:
  print(asciiCharType(23)); // Prints: control
  print(asciiCharType(32)); // Prints: space
  print(asciiCharType(46)); // Prints: punctuation
  print(asciiCharType(50)); // Prints: digit
}
