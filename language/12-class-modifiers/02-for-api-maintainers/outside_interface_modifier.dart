/// Dart Class Modifiers: Class modifiers for API maintainers

/// You can clarify that by putting the `interface` modifier on the class. 
/// That allows the class to be used in an `implements` clause, 
/// but prevents it from being used in `extends`.
import '194_the_interface_modifier.dart';

/// Can be implemented [OUTSIDE] its library
class InternalLogger implements Logger {
  @override
  void log(String message) => 
    print('[Internal] $message');
}

/// Can't be extended [OUTSIDE] its library
/// ```dart
/// class CustomLogger extends Logger {
///   @override
///   void log(String message) => 
///     print('[Custom] $message');
/// }
/// ```

void main() {
  InternalLogger il = InternalLogger();
  il.log('Hello!');

  // CustomLogger cl = CustomLogger();
  // cl.log('How are you?');
}
