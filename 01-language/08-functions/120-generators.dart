/// Dart Functions

/// When you need to lazily produce a sequence of values, 
/// consider using a [generator function]. Dart has built-in support 
/// for two kinds of generator functions:

/// - [Synchronous] generator: Returns an [Iterable] object.
/// - [Asynchronous] generator: Returns a [Stream] object.

/// To implement a [synchronous] generator function, 
/// mark the function body as `sync*`, and use `yield` statements 
/// to deliver values:
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

/// To implement an [asynchronous] generator function, 
/// mark the function body as `async*`, and use `yield` statements 
/// to deliver values:
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

/// If your generator is recursive, 
/// you can improve its performance by using `yield*`:
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

void main() {  
  // ...
  for (var value in naturalsTo(5)) {
    print(value); // Prints 0 to 4 respectively
  }

  var numbers = naturalsTo(5).toList();
  print(numbers); // Prints: [0, 1, 2, 3, 4]

  var doubled = naturalsTo(5).map((x) => x * 2);
  print(doubled.toList()); // Prints: [0, 2, 4, 6, 8]

  // ...
  asynchronousNaturalsTo(5).listen((value) {
    print(value); 
    // Prints 0 to 4 respectively, last?
  });

  // ...
  print(naturalsDownFrom(5).toList()); // Prints: [5, 4, 3, 2, 1]
}
