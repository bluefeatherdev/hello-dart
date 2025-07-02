/// Dart Classes & Objects: Constructors

/// Dart allows you to supply a constructor as a parameter without calling it. 
/// Called a tear-off (as you tear off the parentheses) serves as a closure 
/// that invokes the constructor with the same parameters.

/// If the tear-off is a constructor with the same signature 
/// and return type as the method accepts, you can use the tear-off 
/// as a parameter or variable.

/// Tear-offs differ from lambdas or anonymous functions. 
/// Lambdas serve as a wrapper for the constructor, 
/// whereas a tear-off is the constructor.
void main() {
  // CharCodes 'A', 'B', 'C' => 65, 66, 67
  var charCodes = [65, 66, 67];

  // ----- Good -----

  // Use a tear-off for a named constructor:
  var strings = charCodes.map(String.fromCharCode);
  print(strings); // Prints: (A, B, C)

  // Use a tear-off for an unnamed constructor:
  var buffers = charCodes.map(StringBuffer.new);
  print(buffers); // Prints: (65, 66, 67)

  /// ----- Bad: unnecessary lambdas -----
  /// ```dart
  /// // Instead of a lambda for a named constructor:
  /// var strings = charCodes.map((code) => String.fromCharCode(code));
  /// // Instead of a lambda for an unnamed constructor:
  /// var buffers = charCodes.map((code) => StringBuffer(code));
  /// ```
}
