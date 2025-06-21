// Dart Control flow: Loops
void main() {
  /// A label is an identifier followed by a colon (`labelName:`) 
  /// that you can place before a statement to create a labeled statement. 
  /// Loops and switch cases are often used as [labeled statements].
  
  /// Labels are used to manage control flow. They are often used with loops 
  /// and switch cases and allow you to specify which statement to break out 
  /// of or continue, rather than affecting the innermost loop by default.
  
  /// The following code demonstrates the usage of a label called 
  /// `outerLoop` in a `for` loop with a `break` statement:
  outerLoop:
  for (var a = 1; a <= 3; a++) {
    for (var b = 1; b <= 3; b++) {
      print('a = $a, b = $b');
      if (a == 2 && b == 2) {
        break outerLoop;
      }
    }
  }
  print('outerLoop exited');

  /// The following code demonstrates the use of a label called 
  /// `outerLoop` in a `for` loop with a `continue` statement:
  outerLoop:
  for (var d = 1; d <= 3; d++) {
    for (var e = 1; e <= 3; e++) {
      if (d == 2 && e == 2) {
        continue outerLoop;
      }
      print('d = $d, e = $e');
    }
  }

  /// The following code demonstrates the use of a label called 
  /// `outerLoop` in a `while` loop with a `break` statement:
  var f = 1;
  outerLoop:
  while (f <= 3) {
    var g = 1;
    while (g <= 3) {
      print('f = $f, g = $g');
      if (f == 2 && g == 2) {
        break outerLoop;
      }
      g++;
    }
    f++;
  }
  print('outerLoop exited');

  /// The following code demonstrates the use of a label called 
  /// `outerLoop` in a `while` loop with a `continue` statement:
  var h = 1;
  outerLoop:
  while (h <= 3) {
    var i = 1;
    while (i <= 3) {
      if (h == 2 && i == 2) {
        h++;
        continue outerLoop;
      }
      print('h = $h, i = $i');
      i++;
    }
    h++;
  }

  /// The following code demonstrates the use of a label called 
  /// `outerLoop` in a `do while` loop with a `break` statement:
  var j = 1;
  outerLoop:
  do {
    var k = 1;
    do {
      print('j = $j, k = $k');
      if (j == 2 && k == 2) {
        break outerLoop;
      }
      k++;
    } while (k <= 3);
    j++;
  } while (j <= 3);
  print('outerLoop exited');

  /// The following code demonstrates the use of a label called 
  /// `outerLoop` in a `do while` loop with a `continue` statement:
  var l = 1;
  outerLoop:
  do {
    var m = 1;
    do {
      if (l == 2 && m == 2) {
        l++;
        continue outerLoop;
      }
      print('l = $l, m = $m');
      m++;
    } while (m <= 3);
    l++;
  } while (l <= 3);
}
