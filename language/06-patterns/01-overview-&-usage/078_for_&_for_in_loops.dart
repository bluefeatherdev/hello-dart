// Dart Patterns: Overview & usage
void main() {
  /// You can use patterns in [for and for-in loops]
  /// to iterate-over and destructure values in a collection.
  
  /// This example uses [object destructuring] in a for-in loop 
  /// to destructure the [MapEntry] objects that 
  /// a `<Map>.entries` call returns:
  Map<String, int> hist = {'a': 23, 'b': 100};

  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }

  /// Binding the result of a getter call to a variable of the 
  /// same name is a common use case, so object patterns can also 
  /// infer the getter name from the [variable subpattern]. 
  /// This allows you to simplify the variable pattern from 
  /// something redundant like `key: key` to just `:key`:
  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
}
