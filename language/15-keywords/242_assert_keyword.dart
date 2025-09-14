/// Dart Keywords: [assert]

/// During development, use an assert statement
/// — `assert(<condition>, <optionalMessage>);` —
/// to disrupt normal execution 
/// if a boolean condition is false.

// ignore_for_file: unnecessary_null_comparison

void main() {  
  String? text = 'Hello';
  assert(text != null); // true

  num number = 46;
  assert(number < 100); // true

  String urlString = 'https://dart.dev';
  assert(urlString.startsWith('https'));  // true

  /// To attach a message to an assertion, 
  /// add a string as the second argument to `assert` 
  /// (optionally with a [trailing comma]):
  assert(
    urlString.startsWith('https'),
    'URL ($urlString) should start with "https".',
  );  // true
}
