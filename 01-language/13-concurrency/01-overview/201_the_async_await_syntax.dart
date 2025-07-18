/// Dart Concurrency: [Overview]

/// The `async` and `await` keywords provide a declarative way 
/// to define asynchronous functions and use their results.
import 'dart:io';
import 'dart:convert'; 

const String filename = 'bin/with_keys.json';

/// Here's an example of some [synchronous] code that blocks 
/// while waiting for file I/O:
void main() {
  // Read some data.
  final fileData = _readFileSync();
  final jsonData = jsonDecode(fileData);

  // Use that data.
  print('sync: Number of JSON keys: ${jsonData.length}');

  asyncMain();
}

String _readFileSync() {
  final file = File(filename);
  final contents = file.readAsStringSync();
  return contents.trim();
}

/// Here's similar code, but with changes to make it [asynchronous]:
void asyncMain() async {
  // Read some data.
  final fileData = await _readFileAsync();
  final jsonData = jsonDecode(fileData);

  // Use that data.
  print('async: Number of JSON keys: ${jsonData.length}');
}

Future<String> _readFileAsync() async {
  final file = File(filename);
  final contents = await file.readAsStringSync();
  return contents.trim();
}

/// The `await` keyword works only in functions 
/// that have `async` before the function body.

/// As the following figure shows, 
/// the Dart code pauses while `readAsString()` executes non-Dart code, 
/// in either the Dart runtime or the operating system. 
/// Once `readAsString()` returns a value, Dart code execution resumes.
