// Operators in Dart
void main() {
  /* 
    * !expr : inverts the following expression 
    *         (changes false to true, and vice versa)
    * ||    : logical OR
    * &&    : logical AND
  */

  var done = false;
  var col = 3;
  
  if (!done && (col == 0 || col == 3)) {
    print('Do something...');
  }
}
