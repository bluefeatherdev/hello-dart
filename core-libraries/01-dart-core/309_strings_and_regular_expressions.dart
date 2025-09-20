/// Dart Core Libraries: [dart:core]: Strings and regular expressions

/// A string in Dart is an [immutable sequence of UTF-16 code units].
/// The language tour has more information about strings. You can use
/// regular expressions (`RegExp` objects) to search within strings and
/// to replace parts of strings.

void main() {
  /// 1. [Searching inside a string]:
  print('Never odd or even'.contains('odd')); // true
  print('Never odd or even'.startsWith('Never')); // true
  print('Never odd or even'.endsWith('even')); // true
  print('Never odd or even'.indexOf('odd')); // 6

  /// 2. [Extracting data from a string]:

  // Grab a substring.
  print('Never odd or even'.substring(6, 9)); // odd

  // Split a string using a split pattern.
  var parts = 'progressive web apps'.split(' ');
  print(parts.length); // 3
  print(parts[0] == 'progressive'); // true

  // Get UTF-16 code unit (as a string) by index.
  print('Never odd or even'[0] == 'N'); // true

  // Iterate a list of all characters (as a string).
  for (final char in 'hello'.split('')) {
    print(char); // ...
  }

  // Get all UTF-16 code units in the string.
  var codeUnitList = 'I love you!'.codeUnits.toList();
  print(codeUnitList); // [73, 32, 108, 111, 118, 101, 32, 121, 111, 117, 33]
  print(codeUnitList[0] == 73); // true

  // extra: high-numbered characters are two code units apiece
  print('𝄞'); // 𝄞
  print('𝄞'.codeUnits); // [55348, 56606]
  print('𝄞'.codeUnits.runtimeType); // CodeUnits
  print('𝄞'.codeUnits.toList()); // List<int>
  print('𝄞'.codeUnits.toList().runtimeType); // [55348, 56606]

  print('\u{1D11E}'); // 𝄞
  print('\u{1D11E}'.codeUnits); // [55348, 56606]
  print('\u{1D11E}'.codeUnits.runtimeType); // CodeUnits
  print('\u{1D11E}'.codeUnits.toList()); // List<int>
  print('\u{1D11E}'.codeUnits.toList().runtimeType); // [55348, 56606]

  /// 3. [Converting to uppercase or lowercase]:
  print('web apps'.toUpperCase()); // WEB APPS
  print('WEB APPS'.toLowerCase()); // web apps

  /// 4. [Trimming and empty strings]:
  print('   hello   '.trim() == 'hello'); // true
  print(''.isEmpty); // true
  print(' '.isNotEmpty); // true

  /// 5. [Replacing part of a string]:
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Jesús');
  print(greeting != greetingTemplate); // true
  print(greeting); // Hello, Jesús!

  /// 6. [Building a string]:

  // A StringBuffer doesn't generate a new String object
  // until toString() is called.
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();
  print(
    fullString == 'Use a StringBuffer for efficient string creation.',
  ); // true
  print(fullString); // Use a StringBuffer for efficient string creation.

  /// 7. [Regular expressions]:

  // Use regular expressions for efficient searching
  // and pattern matching of strings.
  var digitSequence = RegExp(r'\d+');

  var letterOnly = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  // contains() can use a regular expression.
  print(letterOnly.contains(digitSequence)); // false
  print(someDigits.contains(digitSequence)); // true

  // Replace every match with another string.
  var exedOut = someDigits.replaceAll(digitSequence, 'XX');
  print(exedOut == 'llamas live XX to XX years'); // true
  print(exedOut); // llamas live XX to XX years

  // You can work directly with the RegExp class, too.
  // The Match class provides access to a regular expression match.
  print(digitSequence.hasMatch(someDigits)); // true

  // Loop through all matches.
  for (final match in digitSequence.allMatches(someDigits)) {
    print(match.group(0)); // 15, then 20
  }
}
