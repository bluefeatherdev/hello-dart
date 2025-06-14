// Types: Generics in Dart

// You discover that you want a string-specific version 
// of this interface, so you create another interface:
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}

// Instead, you can create a single interface 
// that takes a type parameter:
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

void main() {
  /// If you intend for a list to contain only strings, 
  /// you can declare it as `List<String>` 
  /// (read that as "list of string"):
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  // names.add(42);  // Error
  print(names);
}
