/// Dart Classes & Objects: Extension methods

/// If an extension member conflicts with an interface 
/// or with another extension member, then you have a few options.

/// One option is changing how you import the conflicting extension, 
/// using `show` or `hide` to limit the exposed API:

/// Defines the String extension method parseInt().
/// `import 'string_apis.dart';`

/// Also defines `parseInt()`, but hiding NumberParsing2
/// hides that extension method.
/// `import 'string_apis_2.dart' hide NumberParsing2;`

/// Another option is applying the extension explicitly, 
/// which results in code that looks as 
/// if the extension is a wrapper class:

/// Both libraries define extensions on String that contain `parseInt()`,
/// and the extensions have different names.
/// ```dart
/// import 'string_apis.dart';  // Contains NumberParsing extension.
/// import 'string_apis_2.dart';  // Contains NumberParsing2 extension.
/// ```

/// If both extensions have the same name, 
/// then you might need to import using a [prefix]:

/// Both libraries define extensions named NumberParsing
/// that contain the extension method `parseInt()`. One `NumberParsing`
/// extension (in `'string_apis_3.dart'`) also defines `parseNum()`.
import 'string_apis.dart';
import 'string_apis_3.dart' as rad;


void main() {
  /// Uses the `parseInt()` defined in `'string_apis.dart'`.
  /// `print('42'.parseInt());`
  
  /// print('42'.parseInt()); // Doesn't work.
  /// ```dart
  /// print(NumberParsing('42').parseInt());
  /// print(NumberParsing2('42').parseInt());
  /// ```
  
  // print('42'.parseInt()); // Doesn't work.

  // Use the ParseNumbers extension from string_apis.dart.
  print(NumberParsing('42').parseInt());

  // Use the ParseNumbers extension from string_apis_3.dart.
  print(rad.NumberParsing('42').parseInt());

  // Only string_apis_3.dart has parseNum().
  print('42'.parseNum());

  /// As the example shows, 
  /// you can invoke extension methods implicitly 
  /// even if you import using a [prefix]. 
  /// The only time you need to use the prefix 
  /// is to avoid a [name conflict]
  /// when invoking an extension explicitly.
}
