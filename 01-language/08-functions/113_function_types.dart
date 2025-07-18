/// Dart Functions

/// You can specify the type of a function, which is known as a 
/// [function type]. A function type is obtained from a function declaration 
/// header by replacing the function name by the keyword `Function`. 
/// Moreover, you are allowed to omit the names of positional parameters, 
/// but the names of named parameters can't be omitted.

/// For example:
void greet(String name, {String greeting = 'Hello'}) => 
  print('$greeting $name!');

// Store `greet` in a variable and call it.
void Function(String, {String greeting}) g = greet;

void main() {  
  g('Dash', greeting: 'Howdy');
  // Prints: 'Howdy Dash!'

  /// In Dart, functions are first-class objects, 
  /// meaning they can be assigned to variables, 
  /// passed as arguments, and returned from other functions.
  
  /// You can use a `typedef` declaration to explicitly name function types, 
  /// which can be useful for clarity and reusability.
}
