// Operators in Dart
void main() {
  /* 
    * Compound assignment operators:
    * =	*=	%=	>>>=	^=
    * +=	/=	<<=	&=	|=
    * -=	~/=	>>=

    * For an operator op:
    * a op= b	: a = a op b
    
    * Example:
    * a += b	a = a + b
  */

  var a = 2;  // Assign using =
  a *= 3; // Assign and multiply: a = a * 3

  /// `assert(condition)` throws an exception 
  /// if condition is false.
  assert(a == 6);

  print('a: $a'); // Output: 'a: 6'
}
