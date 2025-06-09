// Operators in Dart
void main() {
  /* 
    * ++var	: var = var + 1 (expression value is var + 1)
    * var++	: var = var + 1 (expression value is var)
    * --var	: var = var - 1 (expression value is var - 1)
    * var--	: var = var - 1 (expression value is var)
  */

  /// `assert(condition)` throws an exception 
  /// if condition is false.
  
  int a;
  int b;

  a = 0;
  b = ++a;  // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++;  // Increment a after b gets its value.
  assert(a == b); // 1 != 0

  a = 0;
  b = --a;  // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--;  // Decrement a after b gets its value.
  assert(a == b); // -1 == -1

  print('Hello, Dart!');
}
