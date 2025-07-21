/// Dart Class Modifiers: Class modifiers for API maintainers

/// You can clarify that by putting the `interface` modifier on the class. 
/// That allows the class to be used in an `implements` clause, 
/// but prevents it from being used in `extends`.
interface class Logger {
  void log(String message) {}
}

/// Can be implemented [INSIDE] its library
class InternalLogger implements Logger {
  @override
  void log(String message) => 
    print('[Internal] $message');
}

/// Can be extended [INSIDE] its library
class CustomLogger extends Logger {
  @override
  void log(String message) => 
    print('[Custom] $message');
}

void main() {
  InternalLogger il = InternalLogger();
  il.log('Hello!');

  CustomLogger cl = CustomLogger();
  cl.log('How are you?');
}
