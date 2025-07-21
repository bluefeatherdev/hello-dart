/// Dart Class Modifiers: Class modifiers for API maintainers

/// If you want all of the restrictions of both `interface` and `base`, 
/// you can mark a class or mixin class `final`. This prevents anyone 
/// outside of your library from creating any kind of subtype of it: 
/// no using it in `implements`, `extends`, `with`, or `on` clauses.

/// This is the most restrictive for users of the class. 
/// All they can do is construct it (unless it's marked `abstract`). 
/// In return, you have the fewest restrictions as the class maintainer. 
/// You can add new methods, turn constructors into factory constructors, 
/// etc. without worrying about breaking any downstream users.
import 'outside_final_modifier.dart';

/// Can't [extend] a `final` class outside its declaring library
/// `class MyToken extends AuthToken {}`

/// Can't be [implemented]
/// ```dart
/// class TokenLogger implements AuthToken {
///   @override
///   String get value => 'fake-token';
///
///   @override
///   bool isValid() => false;
/// }
/// ```

/// Can't be used as a [mixin]
/// `class FancyToken with AuthToken {}`

void main() {
  final token = AuthToken('1234567890abcdef');
  print(token.isValid()); // true
}
