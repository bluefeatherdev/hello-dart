/// Dart Keywords: [type]

/// In Dart, the `type` keyword is not used for declaring type aliases.
/// Instead, its primary and almost exclusive role is in the declaration
/// of [extension types], a powerful feature introduced to provide
/// compile-time wrappers around existing types.

/// An extension type lets you define a new static interface over an
/// existing type—called the representation type—without creating
/// a runtime wrapper. This is especially useful for:
/// - Enforcing stricter APIs
/// - Improving performance (no runtime overhead)
/// - JS interop

/// 1. [Custom Interface Over Existing Type]:
extension type SafeInt(int value) {
  bool isPositive() => value > 0;
}

/// 2. [Transparent Extension Types with `implements`]:
extension type SafeInt2(int value) implements int {
  bool isPositive() => value > 0;
}

/// 3. [Named Constructors]:
extension type UserId(int id) {
  UserId.named(this.id);
}

/// 4. [Generic Extension Types]:
extension type Wrapper<T>(List<T> items) {
  int get length => items.length;
}

void main() {
  /// 1. [Custom Interface Over Existing Type]:
  SafeInt mySafeInt = SafeInt(23);
  print(mySafeInt.isPositive()); // true

  /// 2. [Transparent Extension Types with `implements`]:
  SafeInt2 mySafeInt2 = SafeInt2(46);
  print(!mySafeInt2.isNegative); // true (from `int` class)
  print(mySafeInt2.isPositive()); // true (from `SafeInt2` class)

  /// 3. [Named Constructors]:
  UserId userId = UserId(69);
  print(userId.id); // 69

  /// 4. [Generic Extension Types]:
  final wrapperIntList = Wrapper<int>([1, 2, 3]);
  print(wrapperIntList.items); // [1, 2, 3]
  print(wrapperIntList.length); // 3
}
