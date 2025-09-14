/// Dart Keywords: [async & await]

/// The `async` and `await` keywords provide a declarative way 
/// to define asynchronous functions and use their results.
import 'dart:io';
import 'dart:convert';
const String filename = 'bin/with_keys.json';

Future<String> _readFileAsync() async {
  final file = File(filename);
  final contents = await file.readAsString();
  return contents.trim();
}

/// This function uses `async*` to emit each key 
/// from the JSON object one by one.
Stream<String> emitJsonKeys() async* {
  final fileData = await _readFileAsync();
  final jsonData = jsonDecode(fileData);
  for (final key in jsonData.keys) {
    yield key;  // Emit each key individually
  }
}

void main() async {  
  /// Read and print the number of keys (`async`):
  final fileData = await _readFileAsync();
  final jsonData = jsonDecode(fileData);
  print('Number of JSON keys: ${jsonData.length}\n');

  /// Use `async*` to stream each key:
  print('Streaming JSON keys:');
  await for (final key in emitJsonKeys()) {
    print('- $key');
  }
}
