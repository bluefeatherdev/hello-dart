/// Dart Concurrency: [Overview]

/// There are two ways to work with isolates in Dart, 
/// depending on the use-case:
/// - Use `Isolate.run()` to perform a single computation 
///   on a separate thread.
/// - Use `Isolate.spawn()` to create an isolate that will 
///   handle multiple messages over time, or a background worker. 
///   For more information on working with long-lived isolates, 
///   read the [Isolates] page.

/// In most cases, `Isolate.run` is the recommended API 
/// to run processes in the background.

/// The static `Isolate.run()` method requires one argument: 
/// a callback that will be run on the newly spawned isolate.
import 'dart:isolate';

int slowFib(int n) => n <= 1 ? 1 : slowFib(n - 1) + slowFib(n - 2);

// Compute without blocking current isolate.
void fib40() async {
  var result = await Isolate.run(() => slowFib(40));
  print('Fib(40) = $result');
}

void main() {
  fib40();
}
