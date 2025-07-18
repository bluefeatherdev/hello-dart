// Dart Patterns: Overview & usage

// ...
final json = {'name': 'Alice', 'age': 23};

(String, int) userInfo(Map<String, dynamic> data) {
  return (data['name'] as String, data['age'] as int);
}

// ...
({String name3, int age3}) getData() {
  return (name3: 'Doug', age3: 25);
}

void main() {
  /// Records allow aggregating and [returning multiple values] 
  /// from a single function call. Patterns add the ability to 
  /// destructure a record's fields directly into local variables, 
  /// inline with the function call.
  
  // Instead of individually declaring new local variables
  // for each record field, like this:
  var info = userInfo(json);
  var name = info.$1;
  var age = info.$2;

  print(json);  // Prints: {name: Alice, age: 23}
  print(info);  // Prints: (Alice, 23)
  print(name);  // Prints: Alice
  print(age); // Prints: 23

  /// You can destructure the fields of a record that a 
  /// function returns into local variables using a 
  /// [variable declaration] or [assignment pattern], and 
  /// a [record pattern] as its subpattern:
  var (name2, age2) = userInfo(json);

  print(name2);  // Prints: Alice
  print(age2); // Prints: 23

  // To destructure a record with named fields using a pattern:
  final (:name3, :age3) =
    getData();  // For example, return (name: 'Doug', age: 25);

  print(name3);  // Prints: Doug
  print(age3); // Prints: 25
}
