/// Dart Keywords: [dynamic]

/// `dynamic` is used to declare variables 
/// whose type is determined in execution time:
void dynamicExample1() {
  List values = <dynamic>['a', 23, true, null, [1, 2, 3], () => 46];
  for (var element in values) {
    print('value: $element'); 
    print('runtimeType: ${element.runtimeType}');
  }
}

/// You can use `dynamic` to accept any type of argument:
void dynamicExample2(dynamic value) {
  print('value: $value');
}

/// A function can return `dynamic` if the type of return varies:
dynamic dynamicExample3(bool isText) =>
  isText ? 'String' : 23;

/// You can use `dynamic` on lists, maps, etc., to allow multiple types:
void dynamicExample4() {
  List<dynamic> myList = ['a', 1, true, null];
  Map<String, dynamic> myMap = {
    'String': 'dart',
    'int': 23,
    'double': 1.618033988749895,
    'bool': true,
    'null': null,
  };
  print('${myList.runtimeType} $myList');
  print('${myMap.runtimeType} $myMap');
}

void main() { 
  dynamicExample1();  // ...

  dynamicExample2('Hello'); // value: Hello
  dynamicExample2(23);  // value: 23
  dynamicExample2(null);  // value: null

  print(dynamicExample3(true)); // String
  print(dynamicExample3(false));  // 23

  dynamicExample4();  // ...
}
