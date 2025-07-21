// Operators in Dart
void main() {
  /* 
    * +     : Add
    * -     : Subtract
    * -expr : Unary minus, also known as negation 
    *         (reverse the sign of the expression)
    * *     : Multiply
    * /     : Divide
    * ~/    : Divide, returning an integer result
    * %     : Get the remainder of an integer division (modulo)
  */

  /// `assert(condition)` throws an exception 
  /// if condition is false.
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); /// Result is a [double]
  assert(5 ~/ 2 == 2);  /// Result is an [int]
  assert(5 % 2 == 1);   /// Remainder
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  print('Hello, Dart!');
}
