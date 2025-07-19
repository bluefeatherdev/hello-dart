/// Dart Concurrency: [Asynchronous programming]

/// When you need the result of a completed Future, you have two options:
/// - Use `async` and `await`, as described here 
///   and in the [asynchronous programming tutorial].
/// - Use the Future API, as described 
///   in the `dart:async` documentation.

/// Code that uses async and await is asynchronous, 
/// but it looks a lot like synchronous code. For example, 
/// here's some code that uses await to wait for 
/// the result of an asynchronous function:
/// `await lookUpVersion();`

/// To use `await`, code must be in an `async` function
/// —a function marked as `async`:
/// ```dart
/// Future<void> checkVersion() async {
///   var version = await lookUpVersion();
///   // Do something with version
/// }
/// ```

/// Although an `async` function might perform time-consuming operations, 
/// it doesn't wait for those operations. Instead, the `async` function 
/// executes only until it encounters its first `await` expression. 
/// Then it returns a `Future` object, resuming execution only after 
/// the `await` expression completes.

/// Use `try`, `catch`, and `finally` to handle errors 
/// and cleanup in code that uses `await`:
/// ```dart
/// try {
///   version = await lookUpVersion();
/// } catch (e) {
///   // React to inability to look up the version
/// }
/// ```

/// You can use `await` multiple times in an `async` function. 
/// For example, the following code waits three times for 
/// the results of functions:
/// ```dart
/// var entryPoint = await findEntryPoint();
/// var exitPoint = await runExecutable(entryPoint, args);
/// await flushThenExit(exitCode);
/// ```

/// If you get a compile-time error when using `await`, 
/// make sure `await` is in an `async` function. For example, 
/// to use `await` in your app's `main()` function, the body of `main()` 
/// must be marked as `async`:
void main() async {
  /// `checkVersion();`
  /// `print('In main: version is ${await lookUpVersion()}');`
  print('Hello, Dart!');
}

/// The preceding example uses an `async` function 
/// (`checkVersion()`) without waiting for a result—a practice 
/// that can cause problems if the code assumes that the function 
/// has finished executing. To avoid this problem, use 
/// the [unawaited_futures linter rule].
