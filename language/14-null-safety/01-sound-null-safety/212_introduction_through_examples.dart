/// Dart Null Safety: [Sound null safety]

class Foo {}

String getFileName() => 'my_file.txt';

void main() {
  /// With null safety, none of the variables 
  /// in the following code can be `null`:
  
  /// With null safety, none of these can ever be null.
  var i = 42; // Inferred to be an int.
  String name = getFileName();
  final b = Foo();

  print(i); // 42
  print(name);  // my_file.txt
  print(b); // Instance of 'Foo'

  /// To indicate that a variable might have the value `null`, 
  /// just add `?` to its type declaration:
  int? aNullableInt = null;
  print(aNullableInt);  // null
}

