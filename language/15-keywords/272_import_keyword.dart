/// Dart Keywords: [import]

/// The `import` keyword is used to include external libraries 
/// or files into your Dart program. It enables modularity, code reuse, 
/// and access to APIs across packages.

/// 1. [Importing Core Libraries]:
import 'dart:io';

/// 2. [Importing Packages]:
import 'package:color/color.dart' as color;

/// 3. [Importing Local Files]:
import './local_file.dart';

/// 4. [Using `as` for Prefixing]:
import 'dart:collection' as coll;

/// 5. [Using `show` to Import Specific Symbols]:
import 'dart:math' show pi, sqrt;

/// 6. [Using `hide` to Exclude Specific Symbols]:
import 'dart:developer' as dev hide UserTag;

/// 7. [Using `deferred` for Lazy Loading]:
import 'dart:convert' deferred as convert;

Future<void> main() async { 
  /// 1. [Importing Core Libraries]:
  print('Enter your name:');
  String? name = stdin.readLineSync();
  print('Your name is: $name'); // ...

  /// 2. [Importing Packages]:
  print(color.Color.hex('16423C')); // 16423C

  /// 3. [Importing Local Files]:
  print(greetUser('Jesús'));  // Hello, Jesús!

  /// 4. [Using `as` for Prefixing]:
  print(coll.HashMap());  // {}

  /// 5. [Using `show` to Import Specific Symbols]:
  print(pi);  // 3.141592653589793
  print(sqrt(16));  // 4.0

  /// 6. [Using `hide` to Exclude Specific Symbols]:
  print(dev.Timeline.now); // e.g. 184977753463
  // print(dev.UserTag); // Error

  /// 7. [Using `deferred` for Lazy Loading]:
  final jsonString = '{"name": "Jesús", "language": "Dart"}';
  await convert.loadLibrary();  // Load the library only when needed
  final decoded = convert.jsonDecode(jsonString);
  print(decoded); // {name: Jesús, language: Dart}
  print(decoded.runtimeType); // _Map<String, dynamic>
}
