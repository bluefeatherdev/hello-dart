/// Dart Classes & Objects: Extension types

/// An extension type is a compile-time abstraction 
/// that "wraps" an existing type with a different, 
/// static-only interface. They are a major component of 
/// [static JS interop] because they can easily modify 
/// an existing type's interface (crucial for any kind of interop) 
/// without incurring the cost of an actual wrapper.

/// Extension types enforce discipline on the set of operations 
/// (or interface) available to objects of an underlying type, 
/// called the [representation type]. When defining the interface 
/// of an extension type, you can choose to reuse some members 
/// of the representation type, omit others, replace others, 
/// and add new functionality.

/// The following example wraps the `int` type to create 
/// an extension type that only allows operations 
/// that make sense for ID numbers:
extension type IdNumber(int id) {
  // Wraps the 'int' type's '<' operator:
  operator <(IdNumber other) => id < other.id;
  // Doesn't declare the '+' operator, for example,
  // because addition does not make sense for ID numbers.
}

void main() {
  //  Without the discipline of an extension type,
  // 'int' exposes ID numbers to unsafe operations:
  int myUnsafeId = 42424242;
  myUnsafeId = myUnsafeId + 10; // This works, but shouldn't be allowed for IDs.

  var safeId = IdNumber(42424242);
  // safeId + 0; // Compile-time error: No '+' operator.
  // myUnsafeId = safeId; // Compile-time error: Wrong type.
  myUnsafeId = safeId as int; // OK: Run-time cast to representation type.
  safeId < IdNumber(42424241);  // OK: Uses wrapped '<' operator.
}
