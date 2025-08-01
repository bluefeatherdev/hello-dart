/// Dart Null Safety: [Understanding null safety]

/// First off, we fixed the [long-standing complaint] that type promotion 
/// isn't smart about early returns and other unreachable code paths. 
/// When analyzing a function, it now takes into account `return`, `break`, 
/// `throw`, and any other way execution might terminate early in a function.

// Using null safety:
bool isEmptyList(Object object) {
  if (object is! List) return false;
  return object.isEmpty;
}

/// Since the `if` statement will exit the function 
/// when `object` is not a `List`, Dart promotes `object` 
/// to be `List` on the second statement.

void main() {
  final myCollections = [
    [1, 2, 3],  // false
    <int>[],  // true
    {'a': 1, 'b': 2}, // false
    <String, int>{},  // false
  ];
  
  myCollections.forEach((item) => print(isEmptyList(item)));
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
