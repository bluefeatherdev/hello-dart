/// Dart Classes & Objects: Extension methods

/// Extensions can have generic type parameters. 
/// For example, here's some code that extends 
/// the built-in `List<T>` type with a getter, 
/// an operator, and a method:
extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;
  List<T> operator -() => reversed.toList();
  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
  
  /// The type T is bound based on the static type 
  /// of the list that the methods are called on.
}

void main() {
  var myList = <int>[1, 2, 3];
  var myOtherList = <String>['a', 'b', 'c'];

  print(myList.doubleLength); // 6
  print(myOtherList.doubleLength);  // 6

  print(-myList); // [3, 2, 1]
  print(-myOtherList);  // [c, b, a]

  print(myList.split(1)); // [[1], [2, 3]]
  print(myOtherList.split(2));  // [[a, b], [c]]
}
