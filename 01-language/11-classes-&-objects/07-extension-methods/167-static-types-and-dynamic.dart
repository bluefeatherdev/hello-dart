/// Dart Classes & Objects: Extension methods

import 'string_apis.dart';

void main() {
  /// You can't invoke extension methods on variables of type `dynamic`. 
  /// For example, the following code results in a runtime exception:
  /// ```dart
  /// dynamic d = '2';
  /// print(d.parseInt());  // Runtime exception: NoSuchMethodError
  /// ```
  
  /// Extension methods do work with Dart's type inference. 
  /// The following code is fine because the variable `v` 
  /// is inferred to have type `String`:
  var v = '2';
  print(v.parseInt());  // Output: 2

  /// The reason that `dynamic` doesn't work 
  /// is that extension methods are resolved against 
  /// the static type of the receiver. 
  /// Because extension methods are resolved statically, 
  /// they're as fast as calling a static function.
  
  /// For more information about static types and dynamic, 
  /// see [The Dart type system].
}
