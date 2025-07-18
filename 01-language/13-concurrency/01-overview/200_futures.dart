/// Dart Concurrency: [Overview]

/// A `Future` represents the result of an asynchronous operation 
/// that will eventually complete with a value or an error.

/// In this sample code, the return type of `Future<String>` represents 
/// a promise to eventually provide a `String` value (or error).
import 'dart:io';

Future<String> _readFileAsync(String filename) {
  final file = File(filename);

  // .readAsString() returns a Future.
  // .then() registers a callback to be executed 
  //  when `readAsString` resolves.
  return file.readAsString().then((contents) {
    return contents.trim();
  });
}

void main() async {  
  final filename = 'bin/example.txt';
  try {
    final contents = await _readFileAsync(filename);
    print('File content: $contents');
  } catch (e) {
    print('Error reading the file: $e');
  }
}
