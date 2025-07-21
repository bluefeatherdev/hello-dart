/// Dart Concurrency: [Overview]

/// Dart’s runtime model is based on an event loop. 
/// The event loop is responsible for executing your program's code, 
/// collecting and processing events, and more.

/// As your application runs, all events are added to a queue, 
/// called the [event queue]. Events can be anything from requests 
/// to repaint the UI, to user taps and keystrokes, to I/O from the disk. 
/// Because your app can’t predict what order events will happen, 
/// the event loop processes events in the order they're queued, 
/// one at a time.

void main() {  
  /// The way the event loop functions resembles this code:
  /// ```dart
  /// while (eventQueue.waitForEvent()) {
  ///   eventQueue.processNextEvent();
  /// }
  /// ```
  
  /// This example event loop is synchronous and runs on a single thread. 
  /// However, most Dart applications need to do more than one thing at a time. 
  /// For example, a client application might need to execute an HTTP request, 
  /// while also listening for a user to tap a button. 
  
  /// To handle this, Dart offers many async APIs, 
  /// like [Futures, Streams and async-await]. 
  /// These APIs are built around this event loop.
  
  /// For example, consider making a network request:
  /// ```dart
  /// http.get('https://example.com').then((response)) {
  ///   if (response.statusCode == 200) {
  ///     print('Success!');
  ///   }
  /// }
  /// ```
  
  /// When this code reaches the event loop, 
  /// it immediately calls the first clause, `http.get`, 
  /// and returns a `Future`. It also tells the event loop to hold 
  /// onto the callback in the `then()` clause until the HTTP request 
  /// resolves. When that happens, it should execute that callback, 
  /// passing the result of the request as an argument.
  
  /// This same model is generally how the event loop handles 
  /// all other asynchronous events in Dart, such as `Stream` objects.
  print('Hello, Dart!');
}
