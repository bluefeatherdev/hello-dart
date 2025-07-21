/// Dart Concurrency: [Overview]

/// Dart also supports asynchronous code in the form of streams. 
/// Streams provide values in the future and repeatedly over time. 
/// A promise to provide a series of `int` values over time 
/// has the type `Stream<int>`.

/// In the following example, the stream created with `Stream.periodic` 
/// repeatedly emits a new `int` value every second.
Stream<int> stream = 
  Stream.periodic(const Duration(seconds: 1), (i) => i * i);

Future<void> main() async {
  await for (final value in stream) {
    if (value > 100) break;
    print('Value: $value');
  }
}
