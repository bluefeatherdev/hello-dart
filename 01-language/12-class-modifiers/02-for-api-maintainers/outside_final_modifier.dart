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
final class AuthToken {
  final String value;
  AuthToken(this.value);

  bool isValid() => 
    value.length == 16;
}
