// Types: Records in Dart
void main() {
  /// Records allow functions to return multiple values bundled together. 
  /// To retrieve record values from a return, [destructure] the values 
  /// into local variables using [pattern matching].

  // Returns multiple values in a record:
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};

  // Destructures using a record pattern with positional fields:
  var (name, age) = userInfo(json);

  /* Equivalent to:
    var info = userInfo(json);
    var name = info.$1;
    var age = info.$2;
  */

  // Show results
  print(name);  // Prints 'Dash'
  print(age);   // Prints 10

  // ----------------- //
  
  /// You can also destructure a record using its named fields, 
  /// using the colon [:] syntax, 
  /// which you can read more about on the Pattern types page:
  ({String name2, int age2}) userInfo2(Map<String, dynamic> json) {
    return (name2: json['name'] as String, age2: json['age'] as int);
  }

  final json2 = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};

  // Destructures using a record pattern with named fields:
  final (:name2, :age2) = userInfo2(json2);

  // Show results
  print(name2);  // Prints 'Dash'
  print(age2);   // Prints 10
}
