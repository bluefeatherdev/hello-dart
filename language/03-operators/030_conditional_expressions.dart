// Operators in Dart
// ignore_for_file: dead_code
void main() {
  /* 
    * condition ? expr1 : expr2
    * If condition is true, evaluates expr1 (and returns its value); 
    * otherwise, evaluates and returns the value of expr2.

    * expr1 ?? expr2
    * If expr1 is non-null, returns its value; 
    * otherwise, evaluates and returns the value of expr2.
  */

  /// When you need to assign a value based on a boolean expression, 
  /// consider using the conditional operator [?] and [:].
  var isPublic = true;
  var visibility = isPublic ? 'public' : 'private';

  /// If the boolean expression tests for null,
  /// consider using the if-null operator [??] 
  /// (also known as the null-coalescing operator).
  String playerName1(String? name) => name ?? 'Guest';

  /// Slightly longer version uses [?:] operator.
  String playerName2(String? name) => name != null ? name : 'Guest';

  /// Very long version uses [if-else]statement.
  String playerName3(String? name) {
    if (name != null) {
      return name;
    } else {
      return 'Guest';
    }
  }

  // Show results
  print(visibility);          // Output: 'public'
  print(playerName1('John')); // Output: 'John'
  print(playerName1(null));   // Output: 'Guest'   
  print(playerName2('John')); // Output: 'John'
  print(playerName2(null));   // Output: 'Guest'
  print(playerName3('John')); // Output: 'John'
  print(playerName3(null));   // Output: 'Guest'
}
