// Dart Control flow: Error handling
void main() {  
  /// To ensure that some code runs whether or not an exception is thrown, 
  /// use a `finally` clause. If no `catch` clause matches the exception, 
  /// the exception is propagated after the `finally` clause runs:
  /// ```dart
  /// try {
  ///   breedMoreLlamas();
  /// } finally {
  ///   // Always clean up, even if an exception is thrown.
  ///   cleanLlamaStalls();
  /// }
  /// ```
  
  /// The `finally` clause runs after any matching `catch` clauses:
  /// ```dart
  /// try {
  ///   breedMoreLlamas();
  /// } catch (e) {
  ///   print('Error: $e'); // Handle the exception first.
  /// } finally {
  ///   cleanLlamaStalls(); // Then clean up.
  /// }
  /// ```
  print('Hello, Dart!');
}
