/// Dart Keywords: [yield]

/// The `yield` keyword in Dart is a powerful feature used inside special
/// functions called generators. These functions allow you to produce a
/// sequence of values lazily, meaning values are only generated when
/// they are requested. This is highly efficient for large or infinite
/// sequences.

/// The `yield` keyword has two forms: `yield` and `yield*`.
/// Dart supports two types of generator functions:
/// - `sync*` functions → return an `Iterable`
/// - `async*` functions → return a `Stream`

import 'dart:async';

/// 1. [Synchronous Generators (`sync*` and `yield`)]:
Iterable<int> numberSequence(int start, int end) sync* {
  print('Generator started.');
  for (int i = start; i <= end; i++) {
    yield i;
  }
  print('Generator finished!');
}

/// 2. [Synchronous Generators (`sync*` and `yield*`)]:
Iterable<int> partOne() sync* {
  yield 1;
  yield 2;
}

Iterable<int> partTwo() sync* {
  yield 5;
  yield 6;
}

Iterable<int> combinedSequence() sync* {
  yield* partOne();
  yield* [3, 4];
  yield* partTwo();
}

/// 3. [Asynchronous Generators (`async*)*` and `yield`)]:
Stream<int> timedCounter(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

/// 4. [Asynchronous Generators (`async*)*` and `yield*`)]:
Stream<String> getMessages() async* {
  await Future.delayed(Duration(milliseconds: 1000));
  yield 'First message';
  await Future.delayed(Duration(milliseconds: 1000));
  yield 'Second message';
}

Stream<String> messageStream() async* {
  yield 'Stream is starting...';
  // yield* will emit all values from the getMessages() stream as they arrive.
  yield* getMessages();
  yield 'Stream has ended!';
}

void main() async {
  /// 1. [Synchronous Generators (`sync*` and `yield`)]:
  var sequence = numberSequence(1, 4);
  print('Iterable created.');
  for (var value in sequence) {
    print('Received: $value');
  }

  /// 2. [Synchronous Generators (`sync*` and `yield*`)]:
  print('Iterable created.');
  for (var value in combinedSequence()) {
    print('Received: $value');
  }

  /// 3. [Asynchronous Generators (`async*)*` and `yield`)]:
  print('(Streaming) Starting counter...');
  await for (var value in timedCounter(3)) {
    print('Received: $value');
  }
  print('Counter finished!');

  /// 4. [Asynchronous Generators (`async*)*` and `yield*`)]:
  await for (var message in messageStream()) {
    print('Received: $message');
  }
}
