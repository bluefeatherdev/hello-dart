/// Dart Classes & Objects: Extension types

/// You can optionally use the `implements` clause to:
/// - Introduce a subtype relationship on an extension type, AND
/// - Add the members of the representation object to the extension type interface.

/// An extension type can only implement:

/// [Its representation type]. 
/// This makes all members of the representation type 
/// implicitly available to the extension type.
/// ```dart
/// extension type NumberI(int i) {
///   implements int {
///     // 'NumberI' can invoke all members of 'int',
///     // plus anything else it declares here.
///   }
/// }
/// ```

/// [A supertype of its representation type]. 
/// This makes the members of the supertype available, 
/// while not necessarily all the members of representation type.
extension type Sequence<T>(List<T> _) implements Iterable<T> {
  // Better operations than List.
}

extension type Id(int _id) implements Object {
  // Makes the extension type non-nullable.
  static Id? tryParse(String source) =>
    int.tryParse(source) as Id?;
}

/// [Another extension type] that is valid on the same representation type. 
/// This allows you to reuse operations across multiple extension types 
/// (similar to multiple inheritance).
extension type const Opt<T>._(({T value})? _) {
  const factory Opt(T value) = Val<T>;
  const factory Opt.none() = Non<T>;
}

extension type const Val<T>._(({T value}) _) implements Opt<T> {
  const Val(T value) : this._((value : value));
  T get value => _.value;
}

extension type const Non<T>._(Null _) implements Opt<Never> {
  const Non() : this._(null);
}

void main() {
  /// Read the [Usage] section to learn more about 
  /// the effect of `implements` in different scenarios.
  print('Hello, Dart!');
}
