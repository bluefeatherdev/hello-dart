/// Dart Concurrency: [Asynchronous programming]

/// When you need to get values from a Stream, you have two options:
/// - Use `async` and an [asynchronous for loop] (`await for`).
/// - Use the Stream API, as described in the `dart:async` documentation.

/// Before using `await for`, be sure that it makes the code clearer 
/// and that you really do want to wait for all of the stream's results. 
/// For example, you usually should not use `await for` for UI event listeners, 
/// because UI frameworks send endless streams of events.

void main() async {
  /// An asynchronous for loop has the following form:
  /// ```dart
  /// await for (varOrType identifier in expression) {
  ///   // Executes each time the stream emits a value.
  /// }
  /// ```
  
  /// The value of `expression` must have type Stream. 
  /// Execution proceeds as follows:
  /// 1. Wait until the stream emits a value.
  /// 2. Execute the body of the for loop, 
  ///    with the variable set to that emitted value.
  /// 3. Repeat 1 and 2 until the stream is closed.
  
  /// To stop listening to the stream, 
  /// you can use a `break` or `return` statement, 
  /// which breaks out of the for loop 
  /// and unsubscribes from the stream.
  
  /// If you get a compile-time error when implementing 
  /// an asynchronous for loop, make sure the `await for` is in 
  /// an `async` function. For example, to use an asynchronous 
  /// for loop in your app's `main()` function, the body of `main()` 
  /// must be marked as `async`.
  /// ```dart
  /// // ...
  /// await for (final request in requestServer) {
  ///   handleRequest(request);
  /// }
  /// // ...
  /// ```
  print('Hello, Dart!');
}
