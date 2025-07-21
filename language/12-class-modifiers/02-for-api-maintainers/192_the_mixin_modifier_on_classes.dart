/// Dart Class Modifiers: Class modifiers for API maintainers

/// Dart 3.0 no longer allows classes to be used as mixins by default. 
/// Instead, you must explicitly opt-in to that behavior 
/// by declaring a `mixin class`:
mixin class Both {}

class UseAsMixin with Both {}
class UseAsSuperClass extends Both {}

/// If you update your package to Dart 3.0 
/// and don't change any of your code, you may not see any errors. 
/// But you may inadvertently break users of your package 
/// if they were using your classes as mixins.

void main() {
  final a = UseAsMixin();
  final b = UseAsSuperClass();
  print(a); // Instance of 'UseAsMixin'
  print(b); // Instance of 'UseAsSuperClass'
}
