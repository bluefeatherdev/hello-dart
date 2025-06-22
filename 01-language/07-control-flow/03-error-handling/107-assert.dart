// Dart Control flow: Error handling
void main() {  
  /// During development, use an assert statement
  /// — `assert(<condition>, <optionalMessage>);` 
  /// —to disrupt norm  al execution if a boolean condition is false.
  /// Make sure the variable has a non-null value.
  /// `assert(text != null);`

  /// Make sure the value is less than 100.
  /// `assert(number < 100);`

  /// Make sure this is an https URL.
  /// `assert(urlString.startsWith('https'));`
  
  /// To attach a message to an assertion, add a string as 
  /// the second argument to `assert` (optionally with a [trailing comma]):
  var urlString = ' :// dart.dev';
  assert(
    urlString.startsWith('https'),
    'URL ($urlString) should start with "https".',
  );

  /// Some tools, such as [dart run] and [dart compile js] 
  /// support assertions through a command-line flag: 
  /// `--enable-asserts`.
  print('Hello, Dart!');
}
