// Dart Types: Type system

/// When adding a type annotation (`<int>`) 
/// on creation of the list the analyzer complains 
/// that a string argument can't be assigned 
/// to an [int] parameter.
void printInts(List<int> a) => print(a);

void main() {
  /// Although [types] are mandatory,
  /// type [annotations] are optional 
  /// because of [type inference]:
  final list = <int>[];
  list.add(1);
  list.add(2);
  // list.add('2');
  printInts(list);
}
