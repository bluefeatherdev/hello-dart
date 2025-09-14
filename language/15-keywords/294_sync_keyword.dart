/// Dart Keywords: [sync]

/// The `sync` keyword is used to define [synchronous generator functions], 
/// which return an `Iterable`. These functions use the `yield` or `yield*` 
/// keywords to produce a sequence of values lazily.

/// 1. [Syntax and Usage]:
Iterable<int> countToThreeSync() sync* {
  yield 1;
  yield 2;
  yield 3;
}

/// 2. [Delegating with `yield*`]:
Iterable<String> greetingsSync() sync* {
  yield 'Hello';
  yield* ['Hola', 'Bonjour', 'Ciao', 'Hallo'];
}

/// 3. [Valid Ways to Call `sync*` Functions in `main()`]:
Iterable<int> numbers() sync* {
  yield 1;
  yield* [2, 3];
}

Iterable<int> generateNumbers() sync* {
  for (int i = 1; i < 10; i++) {
    yield i;
  }
}

void main() { 
  /// 1. [Syntax and Usage]:
  print(countToThreeSync());  // (1, 2, 3)
  print(countToThreeSync().runtimeType);  // _SyncStarIterable<int>

  /// 2. [Delegating with `yield*`]:
  print(greetingsSync()); // (Hello, Hola, Bonjour, Ciao, Hallo)
  print(greetingsSync().runtimeType); // _SyncStarIterable<String>

  /// 3. [Valid Ways to Call `sync*` Functions in `main()`]:
  
  /// [Using a `for-in` loop]:
  for (var n in numbers()) {
    print(n); // ...
  }

  /// [Using `.toList()`]:
  var myList = numbers().toList();
  print(myList);  // [1, 2, 3]

  /// [Using `.map()` or other Iterable methods]:
  var doubled = numbers()
    .map((n) => n * 2)
    .toList();
  print(doubled); // [2, 4, 6]

  /// [Using `.iterator` manually]:
  var iter = numbers().iterator;
  while (iter.moveNext()) {
    print(iter.current);  // ...
  }

  /// [Using `.take()`]:
  var firstThree = generateNumbers()
    .take(3)
    .toList();
  print(firstThree);  // [1, 2, 3]

  /// [Using `.where()`]:
  var oddNumbers = generateNumbers()
    .where((n) => n.isOdd)
    .toList();
  print(oddNumbers);  // [1, 3, 5, 7, 9]
}
