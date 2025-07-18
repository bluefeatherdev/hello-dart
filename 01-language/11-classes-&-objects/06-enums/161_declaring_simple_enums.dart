/// Dart Classes & Objects: Enums

/// Enumerated types, often called [enumerations] or [enums], 
/// are a special kind of class used to represent 
/// a fixed number of constant values.

/// To declare a simple enumerated type, 
/// use the `enum` keyword and list the values 
/// you want to be enumerated:
enum Color { red, green, blue, }

void main() {
  final enumValues = Color.values;
  print(enumValues);  // [Color.red, Color.green, Color.blue]

  for (final value in enumValues) {
    print('Index: ${value.index}');
    print('Name value: ${value.name}');
  }
}
