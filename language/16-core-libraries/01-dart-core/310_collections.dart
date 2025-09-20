/// Dart Core Libraries: [dart:core]: Collections

/// Dart ships with a core collections API,
/// which includes classes for lists, sets, and maps.

// ignore_for_file: unnecessary_type_check

void main() {
  /// ---------- 1. [Lists] ---------- :

  // Create an empty list of strings.
  var grains = <String>[];
  print(grains); // []
  print(grains.isEmpty); // true
  print(grains.runtimeType); // List<String>

  // Create a list using a list literal.
  var fruits = ['apples', 'oranges'];
  print(fruits); // [apples, oranges]
  print(fruits.isEmpty); // false
  print(fruits.runtimeType); // List<String>

  // Add to a list.
  fruits.add('kiwis');
  print(fruits); // [apples, oranges, kiwis]

  // Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);
  print(fruits); // [apples, oranges, kiwis, grapes, bananas]

  // Get the list length.
  print(fruits.length); // 5

  // Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);

  print(fruits); // [oranges, kiwis, grapes, bananas]
  print(fruits.length); // 4

  // Remove all elements from a list.
  fruits.clear();
  print(fruits); // []
  print(fruits.isEmpty); // true
  print(fruits.length); // 0

  // Create a list using one of the constructors.
  var vegetables = List.filled(99, 'broccoli');
  print(vegetables.length); // 99
  print(vegetables.isNotEmpty); // true
  print(vegetables.runtimeType); // List<String>
  print(vegetables.every((item) => item == 'broccoli')); // true

  // Find the index of an object in a list.
  fruits = ['apples', 'oranges'];
  print(fruits[0] == 'apples'); // true
  print(fruits.indexOf('apples') == 0); // true

  // Sort a list using the sort() method.
  fruits = ['bananas', 'apples', 'oranges'];
  fruits.sort((a, b) => a.compareTo(b));

  print(fruits); // [apples, bananas, oranges]
  print(fruits[0] == 'apples'); // true

  // You can specify the type that a list should contain.
  fruits = <String>[];
  fruits.add('apples');
  var fruit = fruits[0];

  print(fruits); // [apples]
  print(fruits.runtimeType); // List<String>
  print(fruit is String); // true
  // fruits.add(5); Error: 'int' can't be assigned to 'String'

  /// ---------- 2. [Sets] ---------- :

  // Create an empty set of strings.
  var ingredients = <String>{};
  print(ingredients); // {}
  print(ingredients.length); // 0
  print(ingredients.runtimeType); // _Set<String>

  // Add new items to it.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  print(ingredients); // {gold, titanium, xenon}
  print(ingredients.length); // 3

  // Adding a duplicate item has no effect.
  ingredients.add('gold');
  print(ingredients); // {gold, titanium, xenon}
  print(ingredients.length); // 3

  // Remove an item form a set.
  ingredients.remove('gold');
  print(ingredients); // {titanium, xenon}
  print(ingredients.length); // 2

  // Create a set using one of the constructors.
  var atomicNumbers = Set.from([79, 22, 54]);
  print(atomicNumbers); // {79, 22, 54}
  print(atomicNumbers.length); // 3

  // Check whether an item is in the set.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  print(ingredients.contains('titanium')); // true

  // Check whether all the items are in the set.
  print(ingredients.containsAll(['titanium', 'xenon'])); // true

  // Create the intersection of two sets.
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  print(intersection); // {xenon}
  print(intersection.length); // 1
  print(intersection.runtimeType); // _Set<String>
  print(intersection.contains('xenon')); // true

  /// ---------- 3. [Maps] ---------- :

  // Maps often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu'],
  };
  print(
    hawaiianBeaches,
  ); // {Oahu: [Waikiki, Kailua, Waimanalo], Big Island: [Wailea Bay, Pololu Beach], Kauai: [Hanalei, Poipu]}
  print(hawaiianBeaches.length); // 3
  print(hawaiianBeaches.runtimeType); // _Map<String, List<String>>

  // Maps can be built from a constructor.
  var searchTerms = Map();
  print(searchTerms); // {}
  print(searchTerms.length); // 0
  print(searchTerms.runtimeType); // _Map<dynamic, dynamic>

  // You can specify what types the key and values should be.
  var nobleGasesMap = Map<int, String>();
  print(nobleGasesMap); // {}
  print(nobleGasesMap.length); // 0
  print(nobleGasesMap.runtimeType); // _Map<int, String>

  // Retrieve a value with a key.
  nobleGasesMap = {54: 'xenon'};
  print(nobleGasesMap[54] == 'xenon'); // true

  // Check whether a map contains a key.
  print(nobleGasesMap.containsKey(54)); // true

  // Remove a key and its value.
  nobleGasesMap.remove(54);
  print(nobleGasesMap.containsKey(54)); // false
  print(nobleGasesMap); // {}
  print(nobleGasesMap.length); // 0
  print(nobleGasesMap.runtimeType); // _Map<int, String>

  // Get all the keys as an unordered collection (an Iterable).
  var keys = hawaiianBeaches.keys;
  print(keys); // (Oahu, Big Island, Kauai)
  print(keys.length); // 3
  print(keys.runtimeType); // _CompactKeysIterable<String>
  print(Set.from(keys).contains('Oahu')); // true

  // Get all the values as an unordered collection (an Iterable of Lists).
  var values = hawaiianBeaches.values;
  print(
    values,
  ); // ([Waikiki, Kailua, Waimanalo], [Wailea Bay, Pololu Beach], [Hanalei, Poipu])
  print(values.length); // 3
  print(values.runtimeType); // _CompactValuesIterable<List<String>>
  print(values.any((v) => v.contains('Waikiki'))); // true

  // Check whether a map contains a key (null safety).
  print(hawaiianBeaches.containsKey('Oahu')); // true
  print(hawaiianBeaches.containsKey('Florida')); // false

  // Assign a value to a key if the key does not already exist in a map.
  var teamAssignments = <String, String>{};
  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  print(teamAssignments['Catcher'] != null); // true
  print(teamAssignments); // {Catcher: Geralt of Rivia}
  print(teamAssignments.length); // 1
  print(teamAssignments.runtimeType); // _Map<String, String>

  /// ---------- 4. [Common collection methods] ---------- :

  // Check whether  a list, set, or map has items.
  var emptyList = <String>[];
  var emptySet = <dynamic>{};
  var emptyMap = <int, bool>{};

  print(emptyList.isEmpty); // true
  print(emptySet.isEmpty); // true
  print(emptyMap.isEmpty); // true

  var fullList = <String>['a', 'b', 'c'];
  var fullSet = <dynamic>{true, 23, 'hello'};
  var fullMap = <int, bool>{0: true, 1: false, 2: true};

  print(fullList.isNotEmpty); // true
  print(fullSet.isNotEmpty); // true
  print(fullMap.isNotEmpty); // true

  // Use forEach() to apply a function to each item.
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  teas.forEach((tea) => print('I drink $tea')); // ...

  // forEach() on map takes two arguments (the key and value).
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v'); // ...
  });

  // Use map() method from Iterables to get all result in a single object.
  var loudTeas = teas.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print); // tears-off

  // Force your function to be called immediately on each item.
  loudTeas = teas.map((tea) => tea.toUpperCase()).toList();
  loudTeas.forEach(print); // tears-off

  // Chamomile is not caffeinated.
  bool isDecaffeinated(String teaName) => teaName == 'chamomile';
  print(isDecaffeinated('chamomile')); // true
  print(isDecaffeinated('earl grey')); // true

  // Use where() to find only the items that return true
  // from the provided function.
  var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
  print(decaffeinatedTeas); // (chamomile)
  print(decaffeinatedTeas.runtimeType); // WhereIterable<String>

  decaffeinatedTeas = teas.where(isDecaffeinated); // tears-off
  print(decaffeinatedTeas); // (chamomile)
  print(decaffeinatedTeas.runtimeType); // WhereIterable<String>

  // Use any() to check whether at least one item in the
  // collection satisfies a condition (tears-off).
  print(teas.any(isDecaffeinated)); // true

  // Use every() to check whether all the items in a
  // collection satisfy a condition (tears-off).
  print(teas.every(isDecaffeinated)); // false
}

// Assign a value to a key if the key does not already exist in a map.
String pickToughestKid() => 'Geralt of Rivia';
