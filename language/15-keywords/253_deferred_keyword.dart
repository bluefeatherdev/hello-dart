/// Dart Keywords: [deferred]

/// Deferred loading (also called lazy loading) allows a web app 
/// to load a library on demand, if and when the library is needed. 
/// Use deferred loading when you want to meet one or more of the 
/// following needs:
/// 
/// - Reduce a web app's initial startup time.
/// - Perform A/B testing—trying out alternative 
///   implementations of an algorithm, for example.
/// - Load rarely used functionality, such as optional 
///   screens and dialogs.
import 'dart:math' deferred as math;

/// When you need the library, invoke `loadLibrary()`
/// using the library's identifier.
Future<void> greet() async {
  await math.loadLibrary();
  print(math.sqrt(16));
}

void main() async { 
  print('Web app\'s initial startup time...');
  greet();  // 4.0

  /// You can invoke `loadLibrary()` multiple times on a library 
  /// without problems. The library is loaded only once.
}
