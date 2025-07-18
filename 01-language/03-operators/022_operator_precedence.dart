// Operators in Dart
void main() {
  /* 
    * The table shows Dart's operator associativity 
    * and operator precedence from highest to lowest, 
    * which are an approximation of Dart's operator relationships:
    * https://dart.dev/language/operators#operators
  */

  var n = 1;
  var i = 2;
  var d = 3;

  // Parentheses improve readability.
  if ((n % i == 0) && (d % i == 0)) {
    // ...
  }

  // Harder to read, but equivalent.
  if (n % i == 0 && d % i == 0) {
    // ...
  }

  print('Hello, Dart!');
}
