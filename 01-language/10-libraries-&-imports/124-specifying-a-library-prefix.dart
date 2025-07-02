/// Dart Libraries & Imports

/// If you import two libraries that have conflicting identifiers, 
/// then you can specify a prefix for one or both libraries. 
/// ```dart
/// import 'package:lib1/lib1.dart';
/// import 'package:lib2/lib2.dart' as lib2;
/// ```

void main() {  
  /// For example, if library1 and library2 both have an Element class, 
  /// then you might have code like this:
  /// ```dart
  /// // Uses Element from lib1.
  /// Element element1 = Element();
  /// 
  /// // Uses Element from lib2.
  /// lib2.Element element2 = lib2.Element();
  /// ```
  
  /// Import prefixes with the [wildcard] name `_` are non-binding, 
  /// but will provide access to the non-private extensions in that library.
  
  print('Hello, Dart!');
}
