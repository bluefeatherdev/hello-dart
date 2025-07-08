/// Dart Classes & Objects: Enums

import '162-declaring-enhanced-enums.dart';

enum Color { red, green, blue, }

void main() {
  /// Access the enumerated values like any other [static variable]:
  final favoriteColor = Color.blue;

  if (favoriteColor == Color.blue) {
    print('Your favorite color is blue!');
  }

  /// Each value in an enum has an `index` getter, 
  /// which returns the zero-based position 
  /// of the value in the enum declaration. 
  /// For example, the first value has index 0, 
  /// and the second value has index 1:
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  print(Color.red.index == 0);    // true
  print(Color.green.index == 1);  // true
  print(Color.blue.index == 2);   // true

  /// To get a list of all the enumerated values, 
  /// use the enum's `values` constant:
  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);
  print(colors[2] == Color.blue); // true
  
  /// You can use enums in [switch statements], 
  /// and you'll get a warning if 
  /// you don't handle all of the enum's values:
  var aColor = Color.blue;

  switch (aColor) {
    case Color.red:
      print('Read as roses!');
    case Color.green:
      print('Green as grass!');
    default:  // Without this, you see a WARNING.
      print(aColor);  // 'Color.blue'
  }

  /// If you need to access the name of an enumerated value, 
  /// such as `'blue'` from `Color.blue`, use the `.name` property:
  print(Color.blue.name); // 'blue'

  /// You can access a member of an enum value 
  /// like you would on a normal object:
  print(Vehicle.car.carbonFootprint); // 80
}
