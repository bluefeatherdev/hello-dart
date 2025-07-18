// Types: Collections in Dart
void main() {
  // The array, or ordered group of objects:
  var list1 = [1, 2, 3];
  print(list1); // Prints: [1, 2, 3]

  // Trailing comma:
  var list2 = ['Car', 'Boat', 'Plane',];
  print(list2); // Prints: [Car, Boat, Plane]

  /// list's length using the [.length]
  /// List's elements using the subscript operator ([])
  var list3 = [1, 2, 3];
  assert(list3.length == 3);
  assert(list3[1] == 2);
  print(list3.length == 3); // Prints: true
  print(list3[1] == 2); // Prints: true
  
  list3[1] = 1;
  assert(list3[1] == 1);
  print(list3[1] == 1); // Prints: true

  /// `assert(condition)` throws an exception 
  /// if condition is false.
  
  // List as a compile-time constant
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.
  print(constantList); // Prints: [1, 2, 3]
}
