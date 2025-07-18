/// Dart Concurrency: [Overview]

/// Await-for is a type of for loop that executes 
/// each subsequent iteration of the loop as new values are provided. 
/// In other words, it’s used to “loop over” streams. 

/// In this example, a new value will be emitted from the function 
/// `sumStream` as new values are emitted from the stream that’s 
/// provided as an argument. The `yield` keyword is used rather 
/// than `return` in functions that return streams of values.
Stream<int> stream = 
  Stream.periodic(const Duration(seconds: 1), (i) => i * i);

Stream<int> sumStream(Stream<int> stream) async* {
  var sum = 0;
  await for (final value in stream) {
    yield sum += value;
  }
}

Future<void> main() async {
  await for (final accumulated in sumStream(stream)) {
    if (accumulated > 100) break;
    print('Accumulated sum: $accumulated');
  }
}
