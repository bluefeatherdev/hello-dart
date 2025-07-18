// Dart Types: Type system
void main() {
  /// The analyzer can infer types for fields, methods, 
  /// local variables, and most generic type arguments. 
  /// When the analyzer doesn't have enough information 
  /// to infer a specific type, it uses the [dynamic] type:
  
  // In this example, a variable named arguments holds 
  //a map that pairs string keys with values of various types:
  Map<String, Object?> arguments = {'argA': 'hello', 'argB': 42};
  print(arguments);

  /// Alternatively, you can use [var] or [final] 
  /// and let Dart infer the type:
  var arguments2 = {'argA': 'hello', 'argB': 42}; // Map<String, Object>
  print(arguments2);

  /// TIP: Use ctrl + alt in Visual Studio Code
}
