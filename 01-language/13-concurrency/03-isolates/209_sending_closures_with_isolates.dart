/// Dart Concurrency: [Isolates]

/// You can also create a simple worker isolate with `run()` 
/// using a function literal, or closure, directly in the main isolate.
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

const String filename = 'bin/with_keys.json';

void main() async {
  // Read some data.
  final jsonData = await  Isolate.run(() async {
    final fileData = await File(filename).readAsString();
    final jsonData = jsonDecode(fileData) as Map<String, dynamic>;
    return jsonData;
  });

  // Use that data.
  print('Number of JSON keys: ${jsonData.length}');
}

/// This example accomplishes the same as the previous. 
/// A new isolate spawns, computes something, and sends back the result.

/// However, now the isolate sends a [closure]. Closures are less 
/// limited than typical named functions, both in how they function 
/// and how they're written into the code. In this example, 
/// `Isolate.run()` executes what looks like local code, concurrently. 
/// In that sense, you can imagine `run()` to work like a 
/// control flow operator for "run in parallel".
