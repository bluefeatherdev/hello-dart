// Types: Records in Dart
void main() {
  // Each field in a record has its own type. 
  // Field types can differ within the same record.
  (num, Object) pair = (42, 'a');

  var first = pair.$1;  // Static type `num`, runtime type `int`.
  var second = pair.$2; // Static type `Object`, runtime type `String`.

  // Show results
  print(first);   // Output: 42
  print(second);  // Output: 'a'
}
