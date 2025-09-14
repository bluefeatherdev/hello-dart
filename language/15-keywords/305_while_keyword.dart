/// Dart Keywords: [while]

/// The `while` keyword in Dart is used to create loops that continue
/// to execute a block of code as long as a specified condition is `true`.
/// There are two primary ways to use it: the standard [while loop] and
/// the [do-while loop].

import 'dart:io';

void main() {
  /// 1. [The `while` Loop]:
  int count = 1;
  while (count <= 5) {
    print('count: $count');
    count++;
  }
  print('While loop finished!');

  /// 2. [The `do-while` Loop]:
  String? selection;

  do {
    print('--- MENU ---');
    print('1. Create user');
    print('2. Read user');
    print('3. Update user');
    print('4. Delete user');
    print('5. Exit');

    selection = stdin.readLineSync();
    print('coming soon...');
    print('$selection: ${selection.runtimeType}');
  } while (selection != 'q' && selection != '5');
  print('Thanks for coming! Goodbye.');
}
