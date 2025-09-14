/// Dart Keywords: [Function]

/// `Function` is a [type] that represents any function object.
/// Dart treats functions as [first-class objects], meaning they can be:
/// - Assigned to variables
/// - Passed as arguments
/// - Returned from other functions

/// 1. [Declaring a variable of function type]:
Function greet = () => print('Hello!');

/// 2. [Typed function declarations using `Function`]:
/// Left side: Type declaration, ensures type safety 
/// and clarity, optional (but recommended);
/// Right side: `Function` body, implements logic 
/// and defaults, mandatory.
void Function(String, {String greeting}) greeter =
  (name, {greeting = 'Hi'}) {
    print('$greeting $name');
};

/// 3. [`Function` type aliases with `typedef`]:
typedef IntTransformer = int Function(int);

IntTransformer doubleIt = (x) => x * 2;

/// 4. [Returning a function from another function]:
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

/// 5. [Using `Function` in parameter types]:
void applyTwice(Function f, int value) {
  print(f(f(value)));
}

/// 6. [`Function` tear-offs]:
void printElement(int element) {
  print(element);
}

/// 7. [Testing function equality]:
void foo() {}
Function x = foo;

void main() { 
  /// 1. [Declaring a variable of function type]:
  greet();  // Invokes the function

  /// 2. [Typed function declarations using `Function`]:
  greeter('Jesús', greeting: 'Hello');  // Invokes the function

  /// 3. [`Function` type aliases with `typedef`]:
  print(doubleIt(23));  // Invokes the function

  /// 4. [Returning a function from another function]:
  var add2 = makeAdder(2);
  print(add2); // Closure: (int) => int
  print(add2(3)); // Invokes the function

  /// 5. [Using `Function` in parameter types]:
  applyTwice((x) => x + 1, 3); // Invokes the function
  // first call: 3 + 1 = 4, return 4;
  // second call: 4 + 1 = 5, return and print 5;

  /// 6. [`Function` tear-offs]:
  final list = [1, 2, 3];
  list.forEach(printElement); // tear-off + Invokes the function

  /// 7. [Testing function equality]:
  print(foo); // Closure: () => void from Function 'foo': static.
  print(x);   // Closure: () => void from Function 'foo': static.
  assert(foo == x); // true
  print(foo == x);  // true
}

