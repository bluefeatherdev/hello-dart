// Dart Patterns: Pattern types
void main() {
  /// Map patterns match values that implement [Map], 
  /// and then recursively match its subpatterns against 
  /// the map's keys to destructure them.
  /// `{"key": subpattern1, someConst: subpattern2}`
  
  /// Map patterns don't require the pattern to match the entire map. 
  /// A map pattern ignores any keys that the map contains that aren't 
  /// matched by the pattern. Trying to match a key that does not exist 
  /// in the map will throw a [StateError]:
  /// `final {'foo': int? foo} = {};`
  
  var map1 = <String, int>{'foo': 23};
  var map2 = <String, dynamic>{'foo': null};

  final {'foo': int? foo1} = map1;
  final {'foo': int? foo2} = map2;

  print(foo1);  // Prints: 23
  print(foo2);  // Prints: null
}
