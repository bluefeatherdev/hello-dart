// Types: Generics in Dart
// ignore_for_file: unnecessary_type_check
void main() {
  /// Dart generic types are [reified], which means 
  /// that they carry their type information around at runtime. 
  /// For example, you can test the type of a collection:
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names); // Prints: [Seth, Kathy, Lars]
  print(names is List<String>); // Prints: true
}
