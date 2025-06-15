// Types: Typedefs in Dart
// ignore_for_file: unnecessary_type_check

/// Here's an example of declaring and using 
/// a type alias named [IntList]:
typedef IntList = List<int>;

// A type alias can have type parameters:
typedef ListMapper<X> = Map<X, List<X>>;

/// Google recommend [using inline function types] 
/// instead of typedefs for functions, in most situations. 
/// However, function typedefs can still be useful:
typedef Compare<T> = Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  /// A [type alias]—often called a [typedef] because 
  /// it's declared with the keyword [typedef]—
  /// is a concise way to refer to a type:
  
  /// Here's an example of declaring and using 
  /// a type alias named [IntList]:
  IntList il = [1, 2, 3];

  print(IntList); // Prints: List<int>
  print(il);  // Prints: [1, 2, 3]

  // A type alias can have type parameters:
  Map<String, List<String>> m1 = {};  // Verbose.
  ListMapper<String> m2 = {}; // Same thing but shorter and clearer.

  print(m1);  // Prints: {}
  print(m2);  // Prints: {}

  /// Google recommend [using inline function types] 
  /// instead of typedefs for functions, in most situations. 
  /// However, function typedefs can still be useful:
  assert(sort is Compare<int>);
  print(sort is Compare<int>);  // Prints: true

  /// `assert(condition)` throws an exception 
  /// if condition is false.
}
