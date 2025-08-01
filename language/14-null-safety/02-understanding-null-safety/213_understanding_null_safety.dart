/// Dart Null Safety: [Understanding null safety]

// Without null safety:
bool isEmpty(String string) => string.length == 0;

void main() {
  // isEmpty(null); Runtime failure
  print(isEmpty('Hi!'));  // false
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
