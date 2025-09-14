/// Dart Keywords: [sealed]

/// The `sealed` modifier is used to restrict subclassing and implementation 
/// of a class to within the same library. This enables exhaustive type 
/// checking and controlled inheritance, which is especially useful for 
/// modeling finite state machines, algebraic data types, or closed 
/// hierarchies.

/// 1. [Primary Use: Sealed Classes]:
sealed class Fruits {}

class Apple extends Fruits {}
class Mango extends Fruits {}
class Grape extends Fruits {}

// Exhaustive switch statements:
String getFruit(Fruits fruit) {
  return switch (fruit) {
    Apple() => '🍎 Apple',
    Mango() => '🥭 Mango',
    Grape() => '🍇 Grape',
  };
}

// Advanced Use: Pattern Matching:
String describeFruit(Fruits fruit) => switch (fruit) {
  Apple() => '🍎 is red',
  Mango() => '🥭 is orange',
  Grape() => '🍇 is purple',
};

void main() { 
  /// 1. [Primary Use: Sealed Classes]:
  print(getFruit(Apple()));
  print(getFruit(Mango()));
  print(getFruit(Grape()));

  print(describeFruit(Apple()));
  print(describeFruit(Mango()));
  print(describeFruit(Grape()));
}
