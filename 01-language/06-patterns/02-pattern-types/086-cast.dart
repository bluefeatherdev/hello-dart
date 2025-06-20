// Dart Patterns: Pattern types
void main() {
  /// A cast pattern lets you insert a type cast in the middle 
  /// of destructuring, before passing the value to another subpattern:
  /// `foo as String`
  (num, Object) record = (1, 's');
  var (i as int, s as String) = record;
  print(record);  // Prints: (1, s)
  print(i); // Prints: 1
  print(s); // Prints: s

  /// Cast patterns will [throw] if the value doesn't have the stated type. 
  /// Like the [null-assert pattern], this lets you forcibly 
  /// assert the expected type of some destructured value.
}
