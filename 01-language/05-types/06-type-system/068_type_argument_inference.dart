// Dart Types: Type system
void main() {
  /// Type arguments to constructor calls and [generic method] invocations 
  /// are inferred based on a combination of [downward] information 
  /// from the context of occurrence, and [upward] information 
  /// from the arguments to the constructor or generic method. 
  
  // Inferred as if you wrote <int>[].
  List<int> listOfInt = [];
  print(listOfInt); // Prints: []

  // Inferred as if you wrote <double>[3.0].
  var listOfDouble = [3.0];
  print(listOfDouble); // Prints: [3.0]

  // Inferred as Iterable<int>.
  var ints = listOfDouble.map((x) => x.toInt());
  print(ints); // Prints: (3)
}
