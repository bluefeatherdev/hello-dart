// Dart Control flow: Error handling

/// To partially handle an exception, 
/// while allowing it to propagate, 
/// use the `rethrow` keyword:
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow;  // Allow callers to see the exception.
  }
}

void main() {
  /// Catching, or capturing, an exception stops the exception 
  /// from propagating (unless you rethrow the exception). 
  /// Catching an exception gives you a chance to handle it:
  /// ```dart
  /// try {
  ///   breedMoreLlamas();
  /// } on OutOfLlamasException {
  ///   buyMoreLlamas();
  /// }
  /// ```
  
  /// To handle code that can throw more than one type of exception, 
  /// you can specify multiple catch clauses. The first catch clause 
  /// that matches the thrown object's type handles the exception. 
  /// If the catch clause does not specify a type, that clause 
  /// can handle any type of thrown object:
  /// ```dart
  /// try {
  ///   breedMoreLlamas();
  /// } on OutOfLlamasException {
  ///   // A specific exception
  ///   buyMoreLlamas();
  /// } on Exception catch (e) {
  ///   // Anything else that is an exception
  ///   print('Unknown exception: $e');
  /// } catch (e) {
  ///   // No specified type, handles all
  ///   print('Something really unknown: $e');
  /// }
  /// ```
  
  /// As the preceding code shows, you can use either `on` or `catch` or both. 
  /// Use on when you need to specify the exception type. 
  /// Use `catch` when your exception handler needs the exception object.
  
  /// You can specify one or two parameters to `catch()`. 
  /// The first is the exception that was thrown, 
  /// and the second is the stack trace (a [StackTrace] object).
  /// ```dart
  /// try {
  ///   // ...
  /// } on Exception catch (e) {
  ///   print('Exception details:\n $e');
  /// } catch (e, s) {
  ///   // No specified type, handles all
  ///   print('Exception details:\n $e');
  ///   print('Stack trace:\n $s');
  /// }
  /// ```
  
  /// To partially handle an exception, 
  /// while allowing it to propagate, 
  /// use the `rethrow` keyword:
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}
