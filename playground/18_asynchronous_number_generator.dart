/// Playground: [Asynchronous Number Generator]

import 'dart:io';

Stream<int> timedCounter(
  int min,
  int max, [
  int step = 1,
  int milliseconds = 300,
]) async* {
  for (int i = min; i <= max; i += step) {
    await Future.delayed(Duration(milliseconds: milliseconds));
    yield i;
  }
}

int promptForInt(String prompt) {
  stdout.write('$prompt ');
  final String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    throw FormatException('No entry was received ...');
  }

  return int.parse(input);
}

void main() async {
  // Testing on void main() function manually:
  print('Streaming of numbers started...');
  await for (var value in timedCounter(0, 10, 2)) {
    print('Received: $value');
  }
  print('Counter finished!\n');

  // Let's do it on console now:
  try {
    final int min = promptForInt('Type min:');
    final int max = promptForInt('Type max:');
    final int step = promptForInt('Type step:');
    final int milliseconds = promptForInt('Type milliseconds:');

    print('\nStreaming of numbers started...');
    await for (var value in timedCounter(min, max, step, milliseconds)) {
      print('Received: $value');
    }
    print('Counter finished!');
  } catch (e) {
    print('Exception handled: $e');
  }
}
