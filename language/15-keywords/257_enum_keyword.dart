/// Dart Keywords: [enum]

/// Enumerated types, often called [enumerations] or [enums], 
/// are a special kind of class used to represent a fixed number 
/// of constant values.

/// All enums automatically extend the `Enum` class. They are also sealed, 
/// meaning they cannot be subclassed, implemented, mixed in, or 
/// otherwise explicitly instantiated.

/// Declaring simple enums:
enum Color { red, gree, blue }

enum Vehicle {
  car(tires: 4), bus(tires: 6), bicycle(tires: 2);

  const Vehicle({required this.tires});

  final int tires;
}

void main() { 
  /// Access the enumerated values like any other [static variable]:
  final favoriteColor = Color.blue;
  if (favoriteColor == Color.blue) {
    print('My favorite color is blue!');
  }

  /// Each value in an enum has an `index` and `name` getter:
  for (var value in Color.values) {
    print('$value.index: ${value.index}');
    print('$value.name: ${value.name}');
  }

  for (var value in Vehicle.values) {
    print('${value.index}, ${value.name}, tires: ${value.tires}');
  }
}
