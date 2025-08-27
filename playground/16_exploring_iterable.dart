/// Playground: [Exploring Iterable]

/// 1. [Generator that produces numbers from 1 to 5]:
Iterable<int> generateNumbers() sync* {
  for (int i = 1; i < 6; i++) {
    yield i;
  }
}

/// 4. [Inspecting methods]:
Iterable<int> count(n) sync* {
  for (int i = 1; i <= n; i++) {
    yield i;
  }
}

void main() {
  /// 2. [Create the iterable]:
  Iterable<int> numbers = generateNumbers();
  print(numbers); // (1, 2, 3, 4, 5)
  print(numbers.runtimeType); // _SyncStarIterable<int>

  /// 3. [Inspecting properties]:
  iterableProperties(numbers);
  
  /// 4. [Inspecting methods]:
  iterableMethods(numbers);

  /// 5. [Valid Ways to Loop Iterables in `main()`]:
  
  /// [Using a `for-in` loop]:
  for (var n in generateNumbers()) {
    print(n); // ...
  }

  /// [Using `.iterator` manually]:
  var iter = generateNumbers().iterator;
  while (iter.moveNext()) {
    print(iter.current);  // ...
  }

  /// [Using classic 'for' with index]:
  var numberList = numbers.toList();
  for (int i = 0; i < numberList.length; i++) {
    print(numberList[i]);
  }

  /// [Using 'forEach' method + tear-offs]:
  numbers.forEach(print);
}

/// 3. [Inspecting properties]:
void iterableProperties(Iterable<int> numbers) {
  print('First: ${numbers.first}');                 // First: 1
  print('Is empty?: ${numbers.isEmpty}');           // Is empty?: false
  print('Is not empty?: ${numbers.isNotEmpty}');    // Is empty?: true
  print('Iterator: ${numbers.iterator}');           // Iterator: Instance of '_SyncStarIterator<int>'
  print('Last: ${numbers.last}');                   // Last: 5
  print('Length: ${numbers.length}');               // Length: 5
  // print('Single: ${numbers.single}');            // Single: Bad stage: Too many elements
  print('Hash code: ${numbers.hashCode}');          // Hash code: e.g. 697727919
  print('Runtime type: ${numbers.runtimeType}');    // Runtime type: _SyncStarIterable<int>
  print('First or null: ${numbers.firstOrNull}');   // First or null: 1
  print('Indexed: ${numbers.indexed}');             // Indexed: ((0, 1), (1, 2), (2, 3), (3, 4), (4, 5))
  print('Last or null: ${numbers.lastOrNull}');     // Last or null: 5
  print('Non-nulls: ${numbers.nonNulls}');          // Non-nulls: (1, 2, 3, 4, 5)
  print('Single or null: ${numbers.singleOrNull}'); // Single or null: null
}

/// 4. [Inspecting methods]:
void iterableMethods(Iterable<int> numbers) {
  dynamic result;
  result = numbers.any((e) => e >= 5);
  print('any >= 5?: ${result}');                  // any >= 5?: true
  print('any >= 5?: ${result.runtimeType}');      // any >= 5?: bool

  result = numbers.cast();
  print('cast: ${result}');                       // cast: (1, 2, 3, 4, 5)
  print('cast: ${result.runtimeType}');           // cast: CastIterable<int, dynamic>

  result = numbers.contains(3);
  print('contains 3?: ${result}');                // contains 3?: true
  print('contains 3?: ${result.runtimeType}');    // contains 3?: bool

  result = numbers.elementAt(2);
  print('element at 2?: ${result}');              // element at 2?: 3
  print('element at 2?: ${result.runtimeType}');  // element at 2?: int

  result = numbers.elementAtOrNull(5);
  print('element at 5?: ${result}');              // element at 5?: null
  print('element at 5?: ${result.runtimeType}');  // element at 5?: null

  result = numbers.every((e) => e >= 5);
  print('every >= 5?: ${result}');                // every >= 5?: false
  print('every >= 5?: ${result.runtimeType}');    // every >= 5?: bool

  var n = [1, 2, 0, 3];
  result = n.expand(count);
  print('expand: ${result}');                     // expand: (1, 1, 2, 1, 2, 3)
  print('expand: ${result.runtimeType}');         // expand: ExpandIterable<int, int>

  result = numbers.firstWhere((e) => e % 2 == 0);
  print('first even: ${result}');                 // first even: 2
  print('first even: ${result.runtimeType}');     // first even: int

  var initialValue = 1;
  result = numbers.fold(
    initialValue, (previousValue, e) => previousValue + e);
  print('fold: ${result}');                       // fold: 16
  print('fold: ${result.runtimeType}');           // fold: int

  result = numbers.followedBy([6, 7, 8, 9]);
  print('fallowedBy: ${result}');                 // fallowedBy: (1, 2, 3, 4, 5, 6, 7, 8, 9)
  print('fallowedBy: ${result.runtimeType}');     // fallowedBy: FollowedByIterable<int>

  print('forEach: ...');
  numbers.forEach((e) => print('$e ${e.runtimeType}')); // ... int

  result = numbers.join('-');
  print('join: ${result}');                       // join: 1-2-3-4-5
  print('join: ${result.runtimeType}');           // join: String

  result = numbers.lastWhere((e) => e % 2 == 0);
  print('last even: ${result}');                  // last even: 4
  print('last even: ${result.runtimeType}');      // last even: int

  result = numbers.map((e) => e % 2 != 0);
  print('odd numbers: ${result}');                // odd numbers: (false, true, false, true, false)
  print('odd numbers: ${result.runtimeType}');    // odd numbers: MappedIterable<int, bool>

  result = numbers.reduce((value, e) => value + e);
  print('reduce: ${result}');                     // reduce: 15
  print('reduce: ${result.runtimeType}');         // reduce: int

  result = numbers.singleWhere((e) => e == 5);
  print('singleWhere: ${result}');                // singleWhere: 5
  print('singleWhere: ${result.runtimeType}');    // singleWhere: int

  result = numbers.skip(3);
  print('skip 3: ${result}');                     // skip 3: (4, 5)
  print('skip 3: ${result.runtimeType}');         // skip 3: SkipIterable<int>

  result = numbers.skipWhile((e) => e % 2 != 0);
  print('skip odds: ${result}');                  // skip odds: (2, 3, 4, 5)
  print('skip odds: ${result.runtimeType}');      // skip odds: SkipWhileIterable<int>

  result = numbers.take(3);
  print('take 3: ${result}');                     // take 3: (1, 2, 3)
  print('take 3: ${result.runtimeType}');         // take 3: TakeIterable<int>

  result = numbers.takeWhile((e) => e != 4);
  print('takeWhile: ${result}');                  // takeWhile: (1, 2, 3)
  print('takeWhile: ${result.runtimeType}');      // takeWhile: TakeWhileIterable<int>

  result = numbers.toList();
  print('toList: ${result}');                     // toList: [1, 2, 3, 4, 5]
  print('toList: ${result.runtimeType}');         // toList: List<int>

  result = numbers.toSet();
  print('toSet: ${result}');                      // toSet: {1, 2, 3, 4, 5}
  print('toSet: ${result.runtimeType}');          // toSet: _Set<int>

  result = numbers.toString();
  print('toString: ${result}');                   // toString: (1, 2, 3, 4, 5)
  print('toString: ${result.runtimeType}');       // toString: String

  result = numbers.where((e) => e.isOdd);
  print('where: ${result}');                      // where: (1, 3, 5)
  print('where: ${result.runtimeType}');          // where: WhereIterable<int>

  result = numbers.whereType();
  print('whereType: ${result}');                  // whereType: (1, 2, 3, 4, 5)
  print('whereType: ${result.runtimeType}');      // whereType: WhereIterable<int>
}
