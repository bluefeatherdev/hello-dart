// Types: Generics in Dart

/// When using [bounds] to restrict parameter types, 
/// you can refer the bound back to the type parameter itself. 
/// This creates a self-referential constraint, or [F-bound]:
abstract interface class Comparable<T> {
  int compareTo(T o);
}

int compareAndOffset<T extends Comparable<T>>(T t1, T t2) =>
  t1.compareTo(t2) + 1;

class A implements Comparable<A> {
  @override
  int compareTo(A other) => /*...implementation...*/ 0;
}

void main() {
  /// The F-bound `T extends Comparable<T>` 
  /// means [T] must be comparable to itself. 
  /// So, [A] can only be compared to other 
  /// instances of the same type.
  var useIt = compareAndOffset(A(), A());
  print(useIt); // Prints: 1
}
