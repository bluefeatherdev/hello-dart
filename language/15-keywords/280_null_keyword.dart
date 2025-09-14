
/// Dart Keywords: [null]

/// `null` represents the absence of a value.
/// It's the only value of the `Null` type.

// ignore_for_file: unnecessary_null_comparison

void main() { 
  /// 1. [Literal Value]:
  String? name = null;
  print(name);  // null

  /// 2. [Nullable Types (`?` modifier)]:
  int? age;
  print(age);  // null

  age = 21;
  print(age);  // 21

  /// 3. [Default Initialization]
  String? title;
  print(title); // null

  /// 4. [Null Checks]:
  dynamic value;
  if (value == null) {
    print('Value is null');
  }

  /// 5. [Null-aware Operators]:
  String? username; // Default Initialization
  print(username ?? 'Guest'); // if null, use fallback 'Guest'
  username ??= 'BlueFeatherDev';  // assign if null 'BlueFeatherDev'
  print(username);  // BlueFeatherDev

  /// 6. [Null Assertion Operator (`!`)]:
  String? favColor = getColor();
  print(favColor!); // Teal

  /// 7. [Function Return Values]:
  print(getUserName(id: 1));  // Jesús
  print(getUserName(id: 2));  // Elie
  print(getUserName(id: 3));  // null

  /// 8. [Type System: `Null` Type]:
  Null nothing = null;
  print(nothing); // Null

  /// 9. [Generic Constraints]:
  final emptyList = List<Null>.filled(3, null);
  print(emptyList); // [null, null, null]

  /// 10. [Pattern Matching (Dart 3.0+)]:
  List<dynamic> items = [null, 'Dart', 23];
  for (var item in items) {
    switch (item) {
      case null:
        print('Found a null');
      case String s:
        print('Found a String: $s');
      case int i:
        print('Found a int: $i');
      default:
        print('Unknown type');
    }
  }

  /// 11. [Handling `null` explicitly in a switch expression]:
  String? input = null;
  String result = switch (input) {
    null => 'Input is null',
    String() => 'Input is a non-null String',
  };
  print(result);

  /// 12. [Guarding with if-case and null]:
  void describeValue(dynamic value) {
    if (value case null) print('Value is null');
    else if (value case String s) print('Value is String: $s');
    else print('Value is something else');
  }

  describeValue(null);    // Value is null
  describeValue('Jesús'); // Value is String: Jesús
  describeValue(23);      // Value is something else

  /// 13. [Pattern Matching in Records with null]:
  (dynamic, int?) record1 = (null, 5);
  (dynamic, int?) record2 = (true, null);
  (dynamic, int?) record3 = ('hello', 23);
  (dynamic, int?) record4 = (null, null);

  checkRecordValues(record1); // First is null, second is: 5
  checkRecordValues(record2); // Second is null, first is: true
  checkRecordValues(record3); // Both are non-null: hello and 23
  checkRecordValues(record4); // Both are null
}

/// 6. [Null Assertion Operator (`!`)]:
String? getColor() {
  return 'Teal';
}

/// 7. [Function Return Values]:
String? getUserName({required int id}) {
  if (id == 1) return 'Jesús';
  else if (id == 2) return 'Elie';
  else return null;
}

/// 13. [Pattern Matching in Records with null]:
void checkRecordValues((dynamic, int?) record) {
  switch (record) {
    case (null, int i):
      print('First is null, second is: $i');
    case (Object o, null):
      print('Second is null, first is: $o');
    case (Object o, int i):
      print('Both are non-null: $o and $i');
    case (null, null):
      print('Both are null');
  }
}
