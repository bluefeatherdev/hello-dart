/// Dart Keywords: [in]

/// The `in` keyword is used in loop constructs and pattern matching 
/// to iterate over collections or match values. It’s a reserved word, 
/// so it can’t be used as an identifier (e.g., variable name or class name).

/// 2. [`await for ... in`]:
Stream<int> countSteam(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}

void main() async { 
  /// 1. [For-in Loop (Iterating over Collections)]:
  final fruits = ['apple', 'banana', 'mango'];
  for (var fruit in fruits) {
    print('I like $fruit'); // ...
  }

  /// 2. [`await for ... in`]:
  await for (var value in countSteam(3)) {
    print(value); // ...
  }

  /// 3. [`for ... in` in control flow in collections]: 
  var number = [1, 2, 3];
  var doubled = [for (var n in number) n * 2];
  print(doubled); // [2, 4, 6]

  /// 4. [`for ... in` in `Map` entries ]:
  var person = {'name': 'Meritxell', 'age': 26};
  for (var entry in person.entries) {
    print('${entry.key}: ${entry.value}');  // ...
  }

  /// 5. [Dentro de Sets y Maps literales con comprehensions]:
  var names = ['John', 'Cortana'];
  var greetings = {for (var name in names) 'Hello, $name!'};
  print(greetings); // ...
}
