/// Dart Concurrency: [Isolates]

/// The [previous example] explained the basic building blocks needed to 
/// set up a long-lived isolate with two-way communication. As mentioned, 
/// that example lacks some [important features], such as [error handling], 
/// the ability to [close the ports] when they’re no longer in use, and 
/// [inconsistencies] around message ordering in some situations.

/// This example expands on the information in the first example 
/// by creating a long-lived worker isolate that has these additional 
/// features and more, and follows [better design patterns]. Although 
/// this code has similarities to the first example, it is not an 
/// extension of that example.
import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

void main() async {
  final worker = await Worker.spawn();
  print(await worker.parseJson('{"key":"value"}'));
  print(await worker.parseJson('"banana"'));
  print(await worker.parseJson('[true, false, null, 1, "string"]'));
  print(
    await Future.wait([worker.parseJson('"yes"'), worker.parseJson('"no"')]),
  );
  worker.close();
}

/// Step 1: [Define the worker class]
/// Create a class for your background worker isolate. 
/// This class contains all the functionality you need to:
/// - Spawn an isolate.
/// - Send messages to that isolate.
/// - Have the isolate decode some JSON.
/// - Send the decoded JSON back to the main isolate.

/// The class exposes three public methods: 
/// one that creates the worker isolate, 
/// one that handles sending messages to that worker isolate, 
/// and one that can shut down the ports when they’re no longer in use.
class Worker {
  final SendPort _commands;
  final ReceivePort _responses;
  /// Step 5: [Handle multiple messages at the same time]
  /// 
  /// Currently, if you rapidly send messages to the worker isolate, 
  /// the isolate will send the decoded json response in the order 
  /// that they complete, rather than the order that they’re sent. 
  /// You have no way to determine which response corresponds to 
  /// which message.
  /// 
  /// In this step, you’ll fix this problem by giving each message an id, 
  /// and using `Completer` objects to ensure that when outside code calls 
  /// `parseJson` the response that is returned to that caller is the 
  /// correct response.
  final Map<int, Completer<Object?>> _activeRequests = {};
  int _idCounter = 0;
  /// Step 6: [Add functionality to close the ports]
  /// 
  /// When the isolate is no longer being used by your code, 
  /// you should close the ports on the main isolate and the 
  /// worker isolate.
  bool _closed = false;

  /// Step 4: [Complete the isolate setup process]
  /// 
  /// Finally, add the parseJson method, which is a public method 
  /// that allows outside code to send JSON to the worker isolate 
  /// to be decoded.
  Future<Object?> parseJson(String message) async {
    /// Step 6: [Add functionality to close the ports]
    /// 
    /// Finally, you should add code to check if the ports are closed 
    /// before trying to send messages. Add one line in the 
    /// `Worker.parseJson` method.
    if (_closed) throw StateError('Closed');

    /// Step 5: [Handle multiple messages at the same time]
    ///
    /// Next, update the `parseJson` method to create completers 
    /// before it sends messages to the worker isolate.
    final completer = Completer<Object?>.sync();
    final id = _idCounter++;
    _activeRequests[id] = completer;
    _commands.send((id, message));
    return await completer.future;
  }

  /// Step 2: [Create a RawReceivePort in the Worker.spawn method]
  /// 
  /// Before spawning an isolate, you need to create a `RawReceivePort`, 
  /// which is a lower-level `ReceivePort`. Using `RawReceivePort` is a 
  /// preferred pattern because it allows you to separate your isolate 
  /// startup logic from logic that handles message passing on the isolate.
  static Future<Worker> spawn() async {
    // Create a receive port and add its initial message handler.
    final initPort = RawReceivePort();
    final connection = Completer<(ReceivePort, SendPort)>.sync();
    initPort.handler = (initialMessage) {
      final commandPort = initialMessage as SendPort;
      connection.complete((
        ReceivePort.fromRawReceivePort(initPort),
        commandPort,
      ));
    };
    /// Step 3: [Spawn a worker isolate with Isolate.spawn]
    /// 
    /// This step continues to fill in the `Worker.spawn` method. 
    /// You’ll add the code needed to spawn an isolate, and return 
    /// an instance of `Worker` from this class. In this example, 
    /// the call to `Isolate.spawn` is wrapped in a [try/catch block], 
    /// which ensures that, if the isolate fails to start up, the 
    /// `initPort` will be closed, and the `Worker` object won’t be created.
    try {
      await Isolate.spawn(_startRemoteIsolate, (initPort.sendPort));
    } on Object {
      initPort.close();
      rethrow;
    }

    final (ReceivePort receivePort, SendPort sendPort) = 
      await connection.future;

    return Worker._(receivePort, sendPort);
  }

  /// Step 4: [Complete the isolate setup process]
  /// 
  /// In this step, you will complete the basic isolate setup process. 
  /// This correlates almost entirely to the [previous example], and 
  /// there are no new concepts. There is a slight change in that 
  /// the code is broken into more methods, which is a design practice 
  /// that sets you up for adding more functionality through the 
  /// remainder of this example. For an in-depth walkthrough of 
  /// the basic process of setting up an isolate, see 
  /// the [basic ports example].
  Worker._(this._responses, this._commands) {
    _responses.listen(_handleResponsesFromIsolate);
  }

  /// Step 4: [Complete the isolate setup process]
  /// 
  /// Next, add the code for the `_handleResponsesFromIsolate` method.
  void _handleResponsesFromIsolate(dynamic message) {
    /// Step 5: [Handle multiple messages at the same time]
    /// 
    /// Finally, update the `_handleResponsesFromIsolate`.
    final (int id, Object? response) = message as (int, Object?); // New
    final completer = _activeRequests.remove(id)!;  // New

    if (response is RemoteError) {
      completer.completeError(response);  // Updated
    } else {
      completer.complete(response);  // Updated
    }

    /// Step 6: [Add functionality to close the ports]
    /// 
    /// When the isolate is no longer being used by your code, 
    /// you should close the ports on the main isolate and the 
    /// worker isolate.
    if (_closed && _activeRequests.isEmpty) _responses.close();
  }

  /// Step 4: [Complete the isolate setup process]
  /// 
  /// Next, add the `_handleCommandsToIsolate` method, which is responsible 
  /// for receiving messages from the main isolate, decoding json on 
  /// the worker isolate, and sending the decoded json back as a response.
  static void _handleCommandsToIsolate(
    ReceivePort receivePort,
    SendPort sendPort,
  ) {
    receivePort.listen((message) {
      /// Step 6: [Add functionality to close the ports]
      /// 
      /// You need to handle the “shutdown” message in the worker isolate. 
      /// Add the following code to the `_handleCommandsToIsolate` method. 
      /// This code will check if the message is a `String` that reads 
      /// “shutdown”. If it is, it will close the worker isolate’s 
      /// `ReceivePort`, and return.
      if (message == 'shutdown') {
        receivePort.close();
        return;
      }
      /// Step 5: [Handle multiple messages at the same time]
      ///
      /// You also need to update `_handleResponsesFromIsolate` and 
      /// `_handleCommandsToIsolate` to handle this system. 
      /// In `_handleCommandsToIsolate`, you need to account for 
      /// the `message` being a record with two values, rather 
      /// than just the json text. Do so by destructuring the 
      /// values from `message`.
      final (int id, String jsonText) = message as (int, String); // New
      try {
        final jsonData = jsonDecode(jsonText);
        sendPort.send((id, jsonData));  // Updated
      } catch (e) {
        sendPort.send((id, RemoteError(e.toString(), '')));
      }
    });
  }

  /// Step 4: [Complete the isolate setup process]
  /// 
  /// Next, add the code to `_startRemoteIsolate` that is responsible 
  /// for initializing the ports on the worker isolate. [Recall] that 
  /// this method was passed to `Isolate.spawn` in the `Worker.spawn` 
  /// method, and it will be passed the main isolate’s `SendPort` 
  /// as an argument.
  static void _startRemoteIsolate(SendPort sendPort) {
    final receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);
    _handleCommandsToIsolate(receivePort, sendPort);
  }

  /// Step 6: [Add functionality to close the ports]
  /// 
  /// When the isolate is no longer being used by your code, 
  /// you should close the ports on the main isolate and the 
  /// worker isolate.
  void close() {
    if (!_closed) {
      _closed = true;
      _commands.send('shutdown');
      if (_activeRequests.isEmpty) _responses.close();
      print('--- port closed ---');
    }
  }
}

/// In this example, `SendPort` and `ReceivePort` instances follow 
/// a best practice naming convention, in which they are named 
/// in relation to the main isolate. The messages sent through 
/// the `SendPort` from the main isolate to the worker isolate 
/// are called [commands], and the messages sent back to the 
/// main isolate are called [responses].
