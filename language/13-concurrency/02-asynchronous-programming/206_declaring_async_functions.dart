/// Dart Concurrency: [Asynchronous programming]

/// An `async` function is a function whose body 
/// is marked with the `async` modifier.

/// Adding the `async` keyword to a function 
/// makes it return a `Future`. For example, 
/// consider this synchronous function, 
/// which returns a `String`:
/// `String lookUpVersion() => '1.0.0';`

/// If you change it to be an async function—for example, 
/// because a future implementation will be time consuming—
/// the returned value is a Future:
Future<String> lookUpVersion() async => '1.0.0';

/// Note that the function's body doesn't need to use the Future API. 
/// Dart creates the Future object if necessary. If your function 
/// doesn't return a useful value, make its return type `Future<void>`.
void main() async {
  String version = await lookUpVersion();
  print('Founded version: $version');
}
