// Types: Collections in Dart
void main() {
  // A set in Dart is an unordered collection of unique elements:
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);  // Prints: {fluorine, chlorine, bromine, iodine, astatine}

  // To create an empty set:
  var set1 = <String>{}; /// `{}` preceded by a [type argument]
  Set<String> set2 = {}; /// assign `{}` to a variable of type [Set]
  var set3 = {}; /// Creates a [map], not a [set].
  print(set1);  // Prints: {}
  print(set2);  // Prints: {}
  print(set3);  // Prints: {}

  /// Add items to an existing set using the `add()` or `addAll()` methods:
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  print(elements); // Prints: {fluorine, chlorine, bromine, iodine, astatine}

  /// Use `.length` to get the number of items in the set
  assert(elements.length == 5);
  print(elements.length == 5); // Prints: true

  /// `assert(condition)` throws an exception 
  /// if condition is false.
  
  // A set as a compile-time constant:
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine', // Trailing comma
  };
  // constantSet.add('helium'); // This line will cause an error.
  print(constantSet); // Prints: {fluorine, chlorine, bromine, iodine, astatine}
}
