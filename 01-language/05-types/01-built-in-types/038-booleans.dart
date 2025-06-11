// Types: Built-in types in Dart
void main() {
  /// `assert(condition)` throws an exception 
  /// if condition is false.
   
  // Check for an empty string,
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints == 0);

  // Check for null.
  var unicorn = null;
  assert(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

  // Show results
  print(fullName.isEmpty);  // Output: true
  print(hitPoints == 0);  // Output: true
  print(unicorn == null);  // Output: true
  print(iMeantToDoThis.isNaN);  // Output: true
}
