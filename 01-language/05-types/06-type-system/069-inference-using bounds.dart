// Dart Types: Type system

/// This is especially important for F-bounded types, 
/// where inference using bounds correctly infers that, 
/// in the example below, [X] can be bound to [B]. 
/// Without the feature, the type argument must be 
/// specified explicitly: `f<B>(C())`:
class A<X extends A<X>> {}

class B extends A<B> {}

class C extends B {}

void f<X extends A<X>>(X x) {}

/// Here's a more realistic example using 
/// everyday types in Dart like [int] or [num]:
X max<X extends Comparable<X>>(X x1, X x2) => x1.compareTo(x2) > 0 ? x1 : x2;

/// With inference using bounds, Dart can deconstruct type arguments, 
/// extracting type information from a generic type parameter's bound.

/// This allows functions like [f2] in the following example to preserve 
/// both the specific iterable type ([List] or [Set]) and the element type. 
/// Before inference using bounds, this wasn't possible 
/// without losing type safety or specific type information:
(X, Y) f2<X extends Iterable<Y>, Y>(X, x) => (x, x.first);

void main() {
  f(B()); // OK.

  /// OK. Without using bounds, inference relying on best-effort approximations
  /// would fail after detecting that [C] is not a subtype of `A<C>`.
  f(C());

  f<B>(C());  // OK.

  /// Inferred as `max<num>(3, 7)` with the feature, fails without it.
  print(max(3, 7)); // Prints: 7
  
  /// Before inference using bounds, this wasn't possible 
  /// without losing type safety or specific type information
  /// ```dart
  /// var (myList, myInt) = f([1]);
  /// myInt.whatever; // Compile-time error, `myInt` has type `int`
  ///
  /// var (mySet, myString) = f({'Hello!'});
  /// mySet.union({}); // Works, `mySet` has type `Set<String>`.
  /// ```
}
