/// Dart Classes & Objects: Classes

// ignore_for_file: unnecessary_type_check

void main() {  
  /// To get an object's type at runtime, 
  /// you can use the `Object` property `runtimeType`, 
  /// which returns a [Type] object.
  var a = {1: 'hello', 2: 'dart'};
  print('The type of a is: ${a.runtimeType}');
  // Prints: The type of a is: _Map<int, String>

  /// Use a [type test operator] rather than `runtimeType` 
  /// to test an object's type. In production environments, 
  /// the test `object is Type` is more stable than 
  /// the test `object.runtimeType == Type`.
  print(a is Map<int, String>); // Prints: true
}
