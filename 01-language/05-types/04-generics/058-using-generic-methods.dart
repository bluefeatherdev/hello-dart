// Types: Generics in Dart
void main() {
  /// Methods and functions also allow type arguments:
  T first<T>(List<T> ts) {
    // Do some initial work or error checking, then...
    T tmp = ts[0];
    // Do some additional checking or processing...
    return tmp;
  }

  /// Here the generic type parameter on `first (<T>)` 
  /// allows you to use the type argument [T] in several places:
   
  /// - In the function's return type (`T`).
  /// - In the type of an argument (`List<T>`).
  /// - In the type of a local variable (`T tmp`).
  List<int> myList = <int>[10, 20, 30];
  var myList2 = <int>[10, 20, 30];
  var myList3 = [10, 20, 30];

  // Show results:
  print(first(myList)); // Prints: 10
  print(first(myList2)); // Prints: 10
  print(first(myList3)); // Prints: 10
}
