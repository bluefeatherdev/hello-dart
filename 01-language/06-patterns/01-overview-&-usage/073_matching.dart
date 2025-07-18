// Dart Patterns: Overview & usage
void main() {
  /// A pattern always tests against a value to determine 
  /// if the value has the form you expect. 
  /// In other words, you are checking 
  /// if the value [matches] the pattern.
  
  /// What constitutes a match depends on [what kind of pattern]
  /// you are using. For example, a constant pattern matches 
  /// if the value is equal to the pattern's constant:
  int number = 1;
  switch (number) {
    // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }

  /// Many patterns make use of subpatterns, sometimes called [outer] 
  /// and [inner] patterns, respectively. Patterns match recursively 
  /// on their subpatterns. For example, the individual fields of 
  /// any [collection-type] pattern could be [variable patterns] or 
  /// [constant patterns]:
  const a = 'a';
  const b = 'b';
  var obj = [a, b];
  switch (obj) {
    // List pattern [a, b] matches obj first if obj is a list with two fields,
    // then if its fields match the constant subpatterns 'a' and 'b'.
    case [a, b]:
      print('$a, $b');
  }
}
