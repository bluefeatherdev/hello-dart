/// Dart Concurrency: [Isolates]

/// This example demonstrates how you can set up 
/// a long-lived worker isolate with 2-way communication between it 
/// and the main isolate. The code uses the example of sending JSON text 
/// to a new isolate, where the JSON will be parsed and decoded, 
/// before being sent back to the main isolate.
import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

void main() async {
  final worker = Worker();
  await worker.spawn();
  await worker.parseJson('{"key":"value"}');
}

/// Step 1: [Define the worker class]
/// Create a class for your background worker isolate. 
/// This class contains all the functionality you need to:
/// - Spawn an isolate.
/// - Send messages to that isolate.
/// - Have the isolate decode some JSON.
/// - Send the decoded JSON back to the main isolate.
class Worker {
  /// Step 5: [Add a completer to ensure your isolate is set-up]
  late SendPort _sendPort;
  final Completer<void> _isolateReady = Completer.sync();

  /// Step 2: [Spawn a worker isolate] 
  Future<void> spawn() async {
    /// The [Worker.spawn] method is where you will group 
    /// the code for creating the worker isolate and 
    /// ensuring it can receive and send messages.
    final receivePort = ReceivePort();
    receivePort.listen(_handleResponsesFromIsolate);
    await Isolate.spawn(_startRemoteIsolate, receivePort.sendPort);
  }
  
  /// Step 4: [Handle messages on the main isolate]
  void _handleResponsesFromIsolate(dynamic message) {
    /// Finally, you need to tell the main isolate how to handle 
    /// messages sent from the worker isolate back to the main isolate. 
    /// To do so, you need to fill in the `_handleResponsesFromIsolate `
    /// method. Recall that this method is passed to the 
    /// `receivePort.listen` method, as described in [step 2].
    
    /// Also recall that you sent a `SendPort` back to the main isolate 
    /// in [step 3]. This method handles the receipt of that `SendPort`, 
    /// as well as handling future messages (which will be decoded JSON).
    if (message is SendPort) {
      _sendPort = message;
      _isolateReady.complete();
    } else if (message is Map<String, dynamic>) {
      print(message);
    }
  }

  /// Step 3: [Execute code on the worker isolate]
  static void _startRemoteIsolate(SendPort port) {
    /// In this step, you define the method `_startRemoteIsolate` 
    /// that is sent to the worker isolate to be executed when it spawns. 
    /// This method is like the “main” method for the worker isolate.
    final receivePort = ReceivePort();
    port.send(receivePort.sendPort);

    receivePort.listen((dynamic message) async  {
      if (message is String) {
        final transformed = jsonDecode(message);
        port.send(transformed);
      }
    });
  }

  /// Step 5: [Add a completer to ensure your isolate is set-up]
  Future<void> parseJson(String message) async {
    /// To complete the class, define a public method called `parseJson`, 
    /// which is responsible for sending messages to the worker isolate. 
    /// It also needs to ensure that messages can be sent before the 
    /// isolate is fully set up. To handle this, use a [Completer].
    await _isolateReady.future;
    _sendPort.send(message);
  }
}
