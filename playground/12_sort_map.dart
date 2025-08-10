/// Playground: [Sort Maps]

/// In Dart, you can sort a `Map` by its [keys] or [values]. 
/// Since Map in Dart is unordered, sorting creates a new structure 
/// like a `List` or a `LinkedHashMap`. Below are examples for sorting:

void sortByKeys(Map map) {
  var sortedByKey = Map.fromEntries(
    map.entries.toList()
      ..sort((e1, e2) => e1.key.compareTo(e2.key)),
  );
  print(sortedByKey);
}

void sortByValues(Map map) {
  var sortedByValue = Map.fromEntries(
    map.entries.toList()
      ..sort((e1, e2) => e1.value.compareTo(e2.value)),
  );
  print(sortedByValue);
}

void sortDescendingByKeys(Map map) {
  var sortDescending = Map.fromEntries(
    map.entries.toList()
      ..sort((e1, e2) => e2.key.compareTo(e1.key)),
  );
  print(sortDescending);
}

void sortDescendingByValues(Map map) {
  var sortDescending = Map.fromEntries(
    map.entries.toList()
      ..sort((e1, e2) => e2.value.compareTo(e1.value)),
  );
  print(sortDescending);
}

void main() {
  Map myMap = {'b': 2, 'a': 1, 'c': 3};

  sortByKeys(myMap);  // {a: 1, b: 2, c: 3}
  sortByValues(myMap);  // {a: 1, b: 2, c: 3}

  sortDescendingByKeys(myMap);  // {c: 3, b: 2, a: 1}
  sortDescendingByValues(myMap);  // {c: 3, b: 2, a: 1}
}
