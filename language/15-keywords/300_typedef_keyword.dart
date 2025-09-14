/// Dart Keywords: [typedef]

/// In Dart, the `typedef` keyword is used to create type aliases.
/// These aliases can simplify complex type declarations and improve
/// code readability.

/// A `typedef` is a way to give a name to a type.
/// It’s especially useful when:
/// - You want to simplify long or complex type declarations.
/// - You want to improve readability and maintainability.
/// - You’re working with function signatures or generic types.

import 'dart:convert';

/// 1. [Alias for Existing Types]:
typedef BoolList = List<bool>;

/// 2. [Alias with Type Parameters]:
typedef ListMapper<X> = Map<X, List<X>>;

/// 3. [Function Type Aliases (Classic Use)]:
typedef Compare<T> = int Function(T a, T b);

int add(int a, int b) => a + b;

/// 4. [Callback Definitions]:
typedef VoidCallBack = void Function();

void run(VoidCallBack callback) {
  callback();
}

/// 5. [Simplifying Complex Function Signatures]:
typedef JsonParser = Map<String, dynamic> Function(String json);

Map<String, dynamic> parseJson(String json) {
  return jsonDecode(json);
}

void main() {
  /// 1. [Alias for Existing Types]:
  BoolList status = [true, false, true];
  print(status); // [true, false, true]
  print(status.runtimeType); // List<bool>

  /// 2. [Alias with Type Parameters]:
  ListMapper<String> myMap = {
    'fruits': ['apple', 'orange'],
    'colors': ['blue', 'green'],
  };
  print(myMap); // {fruits: [apple, orange], colors: [blue, green]}
  print(myMap.runtimeType); // _Map<String, List<String>>

  /// 3. [Function Type Aliases (Classic Use)]:
  Compare<int> comparator = add;
  print(comparator(5, 3)); // 8

  /// 4. [Callback Definitions]:
  run(() => print('Callback executed!'));

  /// 5. [Simplifying Complex Function Signatures]:
  JsonParser parser = parseJson;
  String jsonString = '{"name":"Jesús", "age": 21}';
  print(jsonString); // {"name":"Jesús", "age": 21}
  print(jsonString.runtimeType); // String

  Map<String, dynamic> result = parser(jsonString);
  print(result); // {name: Jesús, age: 21}
  print(result.runtimeType); // _Map<String, dynamic>
}
