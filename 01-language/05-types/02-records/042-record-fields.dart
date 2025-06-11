// Types: Records in Dart
void main() {
  // Record fields are accessible through built-in getters. 
  // Records are immutable, so fields do not have setters.
  var record = ('first', a: 2, b: true, 'last');

  print(record.$1); // Prints 'first'
  print(record.a);  // Prints 2
  print(record.b);  // Prints true
  print(record.$2); // Prints 'last'
}
