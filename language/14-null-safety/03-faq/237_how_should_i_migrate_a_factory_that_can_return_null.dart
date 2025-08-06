/// Dart Null Safety: [Frequently asked questions]

/// How should I migrate a factory that can return `null`?:
/// Prefer factories that do not return null. 
/// We have seen code that meant to throw an exception 
/// due to invalid input but instead ended up returning null.
import 'dart:typed_data';

/// Instead of:
/// ```dart
/// class StreamReader {
///   factory StreamReader(dynamic data) {
///     StreamReader reader;
///     if (data is ByteData) {
///       reader = BlockReader(data);
///     } else if (data is Map) {
///       reader = JSONBlockReader(data);
///     }
///     return reader;
///   }
/// }
/// ```

/// Do:
abstract class StreamReader {
  void read();

  factory StreamReader(dynamic data) {
    if (data is ByteData) {
      // Move the readIndex forward for the binary reader.
      return BlockReader(data);
    } else if (data is Map) {
      return JSONBlockReader(data);
    } else {
      throw ArgumentError('Unexpected type for data');
    }
  }
}

class BlockReader implements StreamReader {
  final ByteData data;

  BlockReader(this.data);

  @override
  void read() {
    print('Reading binary data: ${data.lengthInBytes} bytes');
  }
}

class JSONBlockReader implements StreamReader {
  final Map json;

  JSONBlockReader(this.json);

  @override
  void read() {
    print('Reading JSON data: ${json.keys.join(', ')}');
  }
}

/// If the intent of the factory was indeed to return null, 
/// then you can turn it into a static method so it is allowed 
/// to return `null`.

void main() {
  final binaryData = ByteData(4);
  final jsonData = {
    'name': 'Jesús', 
    'language': 'Dart',
    'framework/sdk': 'Flutter',
  };

  final reader1 = StreamReader(binaryData);
  final reader2 = StreamReader(jsonData);

  reader1.read(); // Reading binary data: 4 bytes
  reader2.read(); // Reading JSON data: name, language, framework/sdk
}
