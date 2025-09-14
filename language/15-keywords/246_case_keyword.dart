/// Dart Keywords: [case]

/// `case` in `switch` statements,
/// the classic way of using `case` to compare values:
void caseExample1(String command) {
  switch (command) {
    case 'CLOSED':
      print('Closed');
      break;
    case 'OPEN':
      print('Open');
      break;
    default:
      print('Unknown');
  }
}

/// `case` in `switch` statements,
/// use switch as an expression:
String caseExample2(String code) => switch (code) {
  'OK' => 'Success',
  'ERR' => 'Error',
  _ => 'Unknown',
  /// `case` is not used as a keyword here, 
  /// but directly the pattern; separate with `=>` 
  /// and use `_` as a wild card.
};

/// `case` in `if-case`,
/// allows conditional destructuring:
void caseExample3(List pair) {
  if (pair case [int x, int y]) {
    print('Coordinates: $x, $y');
  } else {
    print('Invalid format');
  }
}

/// `case` with guard clauses (`when`),
/// you can add additional conditions:
void caseExample4(dynamic value) {
  switch (value) {
    case num x when x > 0:
      print('$x is positive');
    case num x when x < 0:
      print('$x is negative');
    case num x when x == 0:
      print('$x is zero');
    default:
      print('"$value" is not num');
  }
}

/// `case` with logical patterns,
/// you can combine patterns with `||`, `&&`, 
/// and relational:
void caseExample5(int charCode) {
  switch (charCode) {
    case >= 48 && <= 57:
      print('digit');
    default:
      print('unknown');
  }
}

void main() {  
  caseExample1('OPEN'); // Open
  caseExample1('CLOSED'); // Close
  caseExample1('UPDATE'); // Unknown

  print(caseExample2('OK')); // Success
  print(caseExample2('ERR')); // Error
  print(caseExample2('PULL')); // Unknown

  caseExample3([1, 5]); // Coordinates: 1, 5
  caseExample3([null, 'hello']); // Invalid format

  caseExample4(5);  // 5 is positive
  caseExample4(-5);  // -5 is negative
  caseExample4(0);  // 0 is zero
  caseExample4('string');  // "string" is not num

  caseExample5(50); // digit
  caseExample5(60); // unknown
}
