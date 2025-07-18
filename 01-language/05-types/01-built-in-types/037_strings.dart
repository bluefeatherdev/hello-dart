// Types: Built-in types in Dart
void main() {
  /// A Dart string ([String] object) holds a sequence of UTF-16 code units. 
  /// You can use either single or double quotes to create a string:
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  // Show results
  print(s1);
  print(s2);
  print(s3);
  print(s4);

  // ----------------- //

  /// `assert(condition)` throws an exception 
  /// if condition is false.
  
  /// You can put the value of an expression inside a string 
  /// by using `${expression}`. If the expression is an identifier, 
  /// you can skip the [{}]. 
  var s = 'string interpolation';

  assert(
    'Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
        'which is very handy.',
  );

  assert(
    'That deserves all caps. '
        '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
        'STRING INTERPOLATION is very handy!',
  );

  // Show results
  print('s: $s');
  print('s: ${s.toUpperCase()}');

  // ----------------- //

  /// `assert(condition)` throws an exception 
  /// if condition is false.
  
  /// You can concatenate strings using 
  /// [adjacent string literals] or the [+] operator
  var s5 = 
    'String '
    'concatenation'
    " works even over line breaks.";
  assert(
    s5 ==
      'String concatenation works even over '
        'line breaks.',
  );

  var s6 = 'The + operator ' + 'works, as well.';
  assert(s6 == 'The + operator works, as well.');

  // Show results
  print('s5: $s5');
  print('s6: $s6');

  // ----------------- //

  // To create a multi-line string, 
  // use a triple quote with either 
  // single or double quotation marks
  var s7 = '''
  You can create
  multi-line strings like this one.
  ''';

  var s8 = """This is also a
  multi-line string.""";

  // Show results
  print('s7: $s7');
  print('s8: $s8');

  // ----------------- //

  /// You can create a "raw" string by prefixing it with [r]
  var s9 = r'In a raw string, not even \n gets special treatment.';
  print('s9: $s9');

  // ----------------- //

  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';

  // Show results
  print('aConstNum: $aConstNum');
  print('aConstBool: $aConstBool');
  print('aConstString: $aConstString');
  print('aConstList: $aConstList');

  print('aNum: $aNum');
  print('aBool: $aBool');
  print('aString: $aString');

  print('validConstString: $validConstString');
  // print('invalidConstString: $invalidConstString');
}
