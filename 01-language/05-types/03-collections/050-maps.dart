// Types: Collections in Dart
void main() {
  // In a map, each element is a key-value pair:
  var gifts = {
    // Key: Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',  // Trailing comma
  };

  var nobleGases = {2: 'helium', '10': 'neon', 18: 'argon'};

  // Show results
  print(gifts); // Prints: {first: partridge, second: turtledoves, fifth: golden rings}
  print(nobleGases);  // Prints: {2: helium, 10: neon, 18: argon}

  // ----------------- //
  
  /// You can create the same objects using a [Map constructor]:
  var gifts2 = Map<String, String>();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';

  var nobleGases2 = Map<int, String>();
  nobleGases2[2] = 'helium';
  nobleGases2[10] = 'neon';
  nobleGases2[18] = 'argon';

  // Show results
  print(gifts2);  // Prints: {first: partridge, second: turtledoves, fifth: golden rings}
  print(nobleGases2);  // Prints: {2: helium, 10: neon, 18: argon}

  /// In Dart, the [new] keyword is optional.
   
  // ----------------- //

  /// `assert(condition)` throws an exception 
  /// if condition is false.

  // Add a key-value pair an existing map using,
  /// using the subscript assignment operator (`[]=`):
  var gifts3 = {'first': 'partridge'};
  gifts3['fourth'] = 'calling birds';
  print(gifts3);  // Prints: {first: partridge, fourth: calling birds}

  /// Retrieve a value from a map using the subscript operator (`[]`):
  var gifts4 = {'first': 'partridge'};
  assert(gifts4['first'] == 'partridge');
  print(gifts4['first'] == 'partridge');  // Prints: true

  /// If you look for a key that isn't in a map, you get [null] in return
  var gifts5 = {'first': 'partridge'};
  assert(gifts5['fifth'] == null);
  print(gifts5['fifth'] == null);  // Prints: true

  /// Use `.length` to get the number of key-value pairs in the map:
  var gifts6 = {'first': 'partridge'};
  gifts6['fourth'] = 'calling birds';
  assert(gifts6.length == 2);
  print(gifts6.length == 2);  // Prints: true

  /// A map as a compile-time constant:
  final constantMap = const {2: 'helium', '10': 'neon', 18: 'argon'};
  // constantMap[2] = 'Helium'; // This line will cause an error.
  print(constantMap);  // Prints: {2: helium, 10: neon, 18: argon}
}
