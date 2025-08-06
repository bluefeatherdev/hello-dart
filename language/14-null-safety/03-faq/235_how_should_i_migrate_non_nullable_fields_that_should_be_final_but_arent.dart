/// Dart Null Safety: [Frequently asked questions]

/// How should I migrate non-nullable fields 
/// that should be `final`, but aren't?:
/// Some computations can be moved to the static initializer. 
/// Instead of:
import 'dart:collection';
import 'dart:typed_data';

/// bad
/// ```dart
/// class Vec2D {
///   // Initialized without values
///   ListQueue _context;
///   Float32List _buffer;
///   dynamic _readObject;
/// 
///   Vec2D(Map<String, dynamic> object) {
///     _buffer = Float32List.fromList([0.0, 0.0]);
///     _readObject = object['container'];
///     _context = ListQueue<dynamic>();
///   }
/// }
/// ```

// you can do:
class Vec2D {
  // Initialized with values
  final ListQueue _context = ListQueue<dynamic>();
  final Float32List _buffer = Float32List.fromList([0.0, 0.0]);
  final dynamic _readObject;

  Vec2D(Map<String, dynamic> object) :
    _readObject = object['container'];
}

void main() {
  final vector2d = Vec2D({'x': 2, 'y': 3});
  print(vector2d._buffer);  // [0.0, 0.0]
  print(vector2d._context); // {}
  print(vector2d._readObject);  // null
}
