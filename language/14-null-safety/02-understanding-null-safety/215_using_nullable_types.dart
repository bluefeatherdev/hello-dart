/// Dart Null Safety: [Understanding null safety]

/// Hypothetical unsound null safety:
/// ```dart
/// void bad(String? maybeString) {
///   print(maybeString.length);
/// }
/// 
/// void main() {
///   bad(null);
/// }
/// ```

/// Hypothetical unsound null safety:
/// ```dart
/// void requireStringNotNull(String definitelyString) {
///   print(definitelyString.length);
/// }
/// 
/// void main() {
///   String? maybeString = null; // Or not!
///   requireStringNotNull(maybeString);
/// }
/// ```

/// Without null safety:
/// ```dart
/// void requireStringNotObject(String definitelyString) {
///   print(definitelyString.length);
/// }
/// 
/// void main() {
///   Object maybeString = 'it is';
///   requireStringNotObject(maybeString);
/// }
/// ```

// Using null safety:
void requireStringNotObject(String definitelyString) {
  print(definitelyString.length);
}

void main() {
  Object maybeString = 'it is';
  requireStringNotObject(maybeString as String);
}

/// Without null safety:
/// ```dart
/// List<int> filterEvens(List<int> ints) {
///   return ints.where((n) => n.isEven);
/// }
/// ```

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
