// Default Value in Dart
void main() {
  int? a; // a is a nullable int (null or int)
  // assert(condition) throws an exception 
  // if condition is false.
  // ignore: unnecessary_null_comparison
  assert(a == null);

  int b = 0; // b is int (default value is 0)

  int c; // c is an int (must be initialized before use)
  if (true) { c = 0; } // c is initialized to 0

  print(a); // output: null
  print(b); // output: 0
  print(c); // output: 0
}
