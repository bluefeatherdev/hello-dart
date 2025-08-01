/// Dart Null Safety: [Understanding null safety]

/// [Control flow analysis] has been around in compilers for years. 
/// It's mostly hidden from users and used during compiler optimization, 
/// but some newer languages have started to use the same techniques 
/// for visible language features. Dart already has a dash of 
/// flow analysis in the form of [type promotion]:

// With (or without) null safety:
bool isEmptyList(Object object) {
  if (object is List) {
    return object.isEmpty;  // <-- OK!
  } else {
    return false;
  }
}

// Without null safety:
bool isEmptyList2(Object object) {
  if (object is! List) return false;
  return object.isEmpty;  // <-- Error (before null safety)!
}

void main() {
  final myCollections = [
    [1, 2, 3],  // false
    <int>[],  // true
    {'a': 1, 'b': 2}, // false
    <String, int>{},  // false
  ];
  
  myCollections.forEach((item) => print(isEmptyList(item)));
  myCollections.forEach((item) => print(isEmptyList2(item)));
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
