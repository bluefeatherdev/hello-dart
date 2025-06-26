// Dart Functions: Functions
void main() {  
  /// When you refer to a function, method, or named constructor without parentheses, 
  /// Dart creates a tear-off. This is a closure that takes the same parameters as 
  /// the function and invokes the underlying function when you call it. 
   
  /// If your code needs a closure that invokes a named function with the same 
  /// parameters as the closure accepts, don't wrap the call in a lambda. 
  /// Use a tear-off.
  
  var charCodes = [68, 97, 114, 116];
  var buffer = StringBuffer();

  // --------- Good ---------

  // Function tear-off
  charCodes.forEach(print);

  // Method tear-off
  charCodes.forEach(buffer.write);

  // --------- Bad ---------

  // Function lambda
  charCodes.forEach((code) {
    print(code);
  });

  // Method lambda
  charCodes.forEach((code) {
    buffer.write(code);
  });
}
