// Dart Patterns: Overview & usage
void main() {
  /// A [variable assignment pattern] falls 
  /// on the left side of an assignment. 
  /// First, it destructures the matched object. 
  /// Then it assigns the values to [existing] variables, 
  /// instead of binding new ones.
  
  // Use a variable assignment pattern to swap the values 
  // of two variables without declaring a third temporary one:
  var (a, b) = ('left', 'right');
  (b, a) = (a, b);  // Swap
  print('$a $b'); // Prints: right left
}
