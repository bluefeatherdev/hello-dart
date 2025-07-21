/// Dart Concurrency: [Isolates]

/// 1. Call `run()` to spawn a new isolate (a `background worker`), 
/// directly in the [main isolate] while `main()` waits for the result:
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

const String filename = 'bin/with_keys.json';

void main() async {
  // Read some data.
  final jsonData = await Isolate.run(_readAndParseJson);

  // Use that data.
  print('Number of JSON keys: ${jsonData.length}');
}

/// 2. Pass the worker isolate the function you want it to execute 
/// as its first argument. In this example, it's the existing function 
/// `_readAndParseJson()`:
Future<Map<String, dynamic>> _readAndParseJson() async {
  final fileData = await File(filename).readAsString();
  final jsonData = jsonDecode(fileData) as Map<String, dynamic>;
  return jsonData;
}

/// 3. `Isolate.run()` takes the result `_readAndParseJson()` returns 
/// and sends the value back to the main isolate, 
/// shutting down the worker isolate.

/// 4. The worker isolate [transfers] the memory holding the result 
/// to the main isolate. It [does not copy] the data. 
/// The worker isolate performs a verification pass to ensure 
/// the objects are allowed to be transferred.
