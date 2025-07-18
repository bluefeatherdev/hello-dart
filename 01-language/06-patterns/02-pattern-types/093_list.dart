// Dart Patterns: Pattern types
void main() {
  /// A list pattern matches values that implement [List], 
  /// and then recursively matches its subpatterns against 
  /// the list's elements to destructure them by position:
  /// `[subpattern1, subpattern2]`
  
  const a = 'a';
  const b = 'b';
  var obj = <String>[a, b];
  switch (obj) {
    // List pattern [a, b] matches obj first if obj is a 
    // list with two fields, then if its fields match 
    // the constant subpatterns 'a' and 'b'.
    case [a, b]:
      print('$a, $b');
  }

  /// List patterns require that the number of elements 
  /// in the pattern match the entire list. You can, however, 
  /// use a [rest element] as a place holder to account 
  /// for any number of elements in a list.
  
  /// List patterns can contain [one] rest element (`...`) 
  /// which allows matching lists of arbitrary lengths.
  var [c, d, ..., e, f] = [1, 2, 3, 4, 5, 6, 7];
  print('$c $d $e $f'); // Prints: 1 2 6 7
  
  /// A rest element can also have a subpattern that collects 
  /// elements that don't match the other subpatterns in the list, 
  /// into a new list:
  var [g, h, ...rest, i, j] = [1, 2, 3, 4, 5, 6, 7];
  print('$g $h $rest $i $j'); // Prints: 1 2 [3, 4, 5] 6 7
}
