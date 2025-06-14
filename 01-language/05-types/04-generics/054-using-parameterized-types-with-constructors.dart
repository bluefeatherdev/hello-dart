// Types: Generics in Dart
void main() {
  /// To specify one or more types when using a constructor, 
  /// put the types in angle brackets (`<...>`) 
  /// just after the class name:
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var nameSet = Set<String>.of(names);

  print(names); // Prints: [Seth, Kathy, Lars]
  print(nameSet); // Prints: {Seth, Kathy, Lars}

  /// The following code creates a SplayTreeMap 
  /// that has [integer] keys and values of type [View]:
  // var views = SplayTreeMap<int, View>();
  // print(views);
}
