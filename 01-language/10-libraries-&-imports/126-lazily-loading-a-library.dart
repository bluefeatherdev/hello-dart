/// Dart Libraries & Imports

/// [Deferred loading] (also called [lazy loading]) 
/// allows a web app to load a library on demand, 
/// if and when the library is needed. 
/// Use deferred loading when you want to meet 
/// one or more of the following needs.

/// To lazily load a library, 
/// first import it using `deferred as`:
/// ```dart
/// import 'package:greetings/hello.dart' deferred as hello;
/// ```

/// When you need the library, 
/// invoke `loadLibrary()` using the library's identifier:
/// ```dart
/// Future<void> greet() async {
///   await hello.loadLibrary();
///   hello.printGreeting();
/// }
/// ```

void main() {  
  /// In the preceding code, 
  /// the `await` keyword pauses execution until the library is loaded. 
  /// For more information about `async` and `await`, 
  /// check out [asynchronous programming].
  print('Hello, Dart!');
}
