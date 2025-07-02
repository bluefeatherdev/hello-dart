/// Dart Classes & Objects: Constructors
/// When encountering one of following two cases o
/// f implementing a constructor, use the `factory` keyword:

/// The constructor doesn't always create a new instance of its class. 
/// Although a factory constructor can't return `null`, it might return:
/// - an existing instance from a cache instead of creating a new one
/// - a new instance of a subtype

// You need to perform non-trivial work prior to constructing an instance. 
// This could include checking arguments or doing any other processing 
// that can't be handled in the initializer list.

/// You can also handle late initialization 
/// of a final variable with `late final` (carefully!).

/// The following example includes two factory constructors.
/// - `Logger` factory constructor returns objects from a cache.
/// - `Logger.fromJson` factory constructor initializes 
///   a final variable from a JSON object.
class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  /// Factory constructors can't access `this`.
  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

void main() {
  var logger = Logger('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'UI'};
  var loggerJson = Logger.fromJson(logMap);
  loggerJson.log('I\'m a logMap');
}
