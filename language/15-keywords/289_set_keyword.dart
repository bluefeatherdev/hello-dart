/// Dart Keywords: [set]

/// The `set` keyword is used to define a setter method for a property. 
/// This allows controlled assignment to private fields, often with 
/// validation or transformation logic.

/// 1. [Defining a Setter in a Class]:
class Temperature {
  late double _celsius;

  // Setter
  set fahrenheit(double f) {
    _celsius = (f - 32) * 5 / 9;
  }

  // Getter
  double get celsius => _celsius;
}

void main() { 
  /// 1. [Defining a Setter in a Class]:
  var temp = Temperature();
  temp.fahrenheit = 98.6;
  print(temp.celsius);  // 37.0
}
