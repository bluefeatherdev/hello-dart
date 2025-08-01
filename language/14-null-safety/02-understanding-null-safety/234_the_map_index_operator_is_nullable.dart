/// Dart Null Safety: [Understanding null safety]

/// This isn't really a change, but more a thing to know. 
/// The index `[]` operator on the Map class returns `null` if 
/// the key isn't present. This implies that the return type 
/// of that operator must be nullable: `V?` instead of `V`.

/// The runtime behavior is the same and thus the return type 
/// is obliged to be nullable. This means you generally cannot 
/// immediately use the result of a map lookup:

void main() {
  /// Using null safety, incorrectly:
  /// ```dart
  /// var map = {'key': 'value'};
  /// print(map['key'].length); // Error
  /// ```
  
  /// This gives you a compile error on the attempt to call `.length` 
  /// on a nullable string. In cases where you know the key is 
  /// present you can teach the type checker by using `!`:
  var map = {'key': 'value'};
  print(map['key']!.length); // OK.

  /// So the idiomatic way to access a known-present element 
  /// in a map is to use `[]!`. You get used to it.
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
