// Types: Collections in Dart
// ignore_for_file: dead_code

void main() {
  /// Expression elements:
  /// `<expression>`
  
  // ----------------- //

  /// Map entry elements:
  /// `<key_expression>: <value_expression>`
  
  // ----------------- //

  /// Null-aware elements:
  /// `?<expression>`
  /// `?<key_expression>: <value_expression>`
  /// `<key_expression>: ?<value_expression>`
  /// `?<key_expression>: ?<value_expression>`
  
  ///  The result for the null-aware element [?a] 
  /// is not added to a list called items because [a] is [null]:
  int? absentValue = null;
  int? presentValue = 3;

  var items = [
    1,
    ?absentValue,
    // ?presentValue,
    presentValue,
    absentValue,
    5
  ];  // [1, 3, null, 5]

  print(absentValue); // Prints: null
  print(presentValue);  // Prints: 3
  print(items); // Prints: [1, 3, null, 5]   

  // Various ways that you can use null-aware elements 
  // inside of map entry element:
  String? presentKey = 'Apple';  
  String? absentKey = null;  

  // int? absentValue = null;
  // int? presentValue = 3;

  var itemsA = {presentKey: absentValue}; // {Apple: null}
  var itemsB = {presentKey: ?absentValue}; // {}

  var itemsC = {absentKey: presentValue}; // {null: 3}
  var itemsD = {?absentKey: presentValue}; // {}

  var itemsE = {absentKey: absentValue}; // {null: null}
  var itemsF = {?absentKey: ?absentValue}; // {}

  print(presentKey);  // Prints: Apple
  print(absentKey); // Prints: null
  print(itemsA);  // Prints: {Apple: null}
  print(itemsB);  // Prints: {}
  print(itemsC);  // Prints: {null: 3}
  print(itemsD);  // Prints: {}
  print(itemsE);  // Prints: {null: null}
  print(itemsF);  // Prints: {}

  // ----------------- //

  /// Spread elements:
  /// `...<sequence_expression>`
  
  /// Elements in a list called [a] are added to a list called [items]:
  var a = [1, 2, null, 4];
  var items2 = [0, ...a, 5];  // [0, 1, 2, null, 4, 5]

  print(a); // Prints: [1, 2, null, 4]
  print(items2);  // Prints: [0, 1, 2, null, 4, 5]

  // ----------------- //

  /// Null-aware spread elements:
  /// `...?<sequence_expression>`
  
  /// A list called [a] is ignored because it's null, 
  /// but the elements in a list called [b] 
  /// are added to a list called [items]:
  List<int>? a2 = null;
  var b = [1, null, 3];
  var items3 = [0, ...?a2, ...b, 4]; // [0, 1, null, 3, 4]

  print(a2);  // Prints: null
  print(b); // Prints: [1, null, 3]
  print(items3);  // Prints: [0, 1, null, 3, 4]

  /// You can't perform a spread operation ([...]) 
  /// on a value that might be null.
  List<String> buildCommandLine(
    String executable,
    List<String> options, [
      List<String>? extraOptions,
  ]) {
    return [
      executable,
      ...options,
      // ...extraOptions,  // <-- Error
      ...?extraOptions,  // <-- Ok now.
    ];
  }

  var x = buildCommandLine('dart', ['run', 'my_Script.dart'], null);
  print(x); // Prints: [dart, run, my_Script.dart]

  // ----------------- //

  /// If elements
  /// The [if] element has a few syntax variations:
  
  // If the bool expression is true, include the result:
  /// `if (<bool_expression>) <result>`
   
  // If the expression matches the pattern, include the result:
  /// `if (<expression> case <pattern>) <result>`
    
  // If the operation resolves as true, include the first
  // result, otherwise, include the second result:
  /// `if (<bool_expression>) <result> else <result>`
  
  // If the operation resolves as true, include the first
  // result, otherwise, include the second result:
  /// `if (<expression> case <pattern>) <result> else <result>`
  
  /// Various ways that you can use an [if] element 
  /// inside of a collection with a [boolean expression]:
  var includeItem = true;
  var items4 = [0, if (includeItem) 1, 2, 3]; // [0, 1, 2, 3]

  print(includeItem); // Prints: true
  print(items4);  // Prints: [0, 1, 2, 3]

  var includeItem2 = true;
  var items5 = [0, if (!includeItem2) 1, 2, 3]; // [0, 2, 3]

  print(includeItem); // Prints: true
  print(items5);  // Prints: [0, 2, 3]

  var name = 'apple';
  var items6 = [0, if (name == 'orange') 1 else 10, 2, 3]; // [0, 10, 2, 3]

  print(name); // Prints: apple
  print(items6);  // Prints: [0, 10, 2, 3]

  var name2 = 'apple';
  var items7 = [
    0, 
    if (name == 'kiwi') 1 else if (name == 'pear') 10, 
    2, 
    3
  ]; // [0, 2, 3]

  print(name2); // Prints: apple
  print(items7);  // Prints: [0, 2, 3]

  /// The following examples illustrate various ways 
  /// that you can use an [if] element with a [case] part 
  /// inside of a collection:
  Object data = 123;
  var typeInfo = [
    if (data case int i) 'Data is an integer: $i',
    if (data case String s) 'Data is a string: $s',
    if (data case bool b) 'Data is a boolean: $b',
    if (data case double d) 'Data is a double: $d',
  ];  // [Data is an integer: 123, Data is a double: 123]

  print(data);  // Prints: 123
  print(typeInfo);  // Prints: [Data is an integer: 123]

  var word = 'hello';
  var items8 = [
    1,
    if (word case String(length: var wordLength)) wordLength,
    3,
  ];  // [1, 5, 3]

  print(word);  // Prints: hello
  print(items8);  // Prints: [1, 5, 3]

  var orderDetails = ['Apples', 12, ''];
  var summary = [
    'Product: ${orderDetails[0]}',
    if (orderDetails case [_, int qty, _]) 'Quantity: $qty',
    if (orderDetails case [_, _, ''])
      'Delivery: Not Started'
    else
    'Delivery: In Progress',
  ];  // [Product: Apples, Quantity: 12, Delivery: Not Started]

  print(orderDetails);  // Prints: ['Apples', 12, '']
  print(summary);  // Prints: [Product: Apples, Quantity: 12, Delivery: Not Started]

  /// You can mix different [if] operations 
  /// with an [else if] part. For example:
  var a3 = 'apple';
  var b2 = 'orange';
  var c = 'mango';
  var items9 = [
    0,
    if (a3 == 'apple') 1 else if (a3 case 'mango') 10,
    if (b2 == 'pear') 2 else if (b2 case 'mango') 20,
    if (c == 'apple') 3 else if (c case 'mango') 30,
    4,
  ];  // [0, 1, 30, 4]

  print(a3);  // Prints: apple
  print(b2);  // Prints: orange
  print(c);  // Prints: mango
  print(items9);  // Prints: [0, 1, 30, 4]

  // ----------------- //

  /// For elements
  /// A [for] element has this syntax in a collection:
  /// `for (<expression> in <collection>) <result>`
  /// `for (<initialization_clause>; <condition_clause>; <increment_clause>) <result>`
  
  /// The following examples illustrate various ways 
  /// that you can use a [for] element inside of a collection:
  var numbers = [2, 3, 4];
  var items10 = [1, for (var n in numbers) n * n, 7]; // [1, 4, 9, 16, 7]

  print(numbers); // Prints: [2, 3, 4]
  print(items10); // Prints: [1, 4, 9, 16, 7]

  var items11 = [1, for (var x = 5; x > 2; x--) x, 7]; // [1, 5, 4, 3, 7]
  
  print(items11); // Prints: [1, 5, 4, 3, 7]

  var items12 = [1, for (var x = 2; x < 4; x++) x, 7]; // [1, 2, 3, 4, 7]
  
  print(items12); // Prints: [1, 2, 3, 4, 7]

  // ----------------- //

  /// Nest control flow elements
  /// You can nest control flow elements within each other. 
  /// This is a powerful alternative to list comprehensions 
  /// in other languages.
  
  /// In the following example, only the even numbers 
  /// in [numbers] are included in [items]:
  var numbers2 = [1, 2, 3, 4, 5, 6, 7];
  var items13 = [
    0,
    for (var n in numbers2)
      if (n.isEven) n,
    8,
  ];  // [0, 2, 4, 6, 8]

  print(numbers2); // Prints: 1, 2, 3, 4, 5, 6, 7]
  print(items13); // Prints: [0, 2, 4, 6, 8]

  /// It's common and idiomatic to use a [spread] 
  /// on a collection literal immediately inside 
  /// of an [if] or [for] element
  // var items14 = [
  //   if (condition) onThing(),
  //   if (condition) ...[multiple(), things()],
  // ];  // [oneThing, [multiple_a, multiple_b], things]

  /// You can nest all kinds of elements arbitrarily deep
  /// [if], [for] and [spread] elements are nested 
  /// within each other in a collection:
  var nestItems = true;
  var ys = [1, 2, 3, 4];
  var items15 = [
    if (nestItems) ...[
      for (var x = 0; x < 3; x++)
        for (var y in ys)
          if (x < y) x + y * 10,
    ],
  ];  // [10, 20, 30, 40, 21, 31, 41, 32, 42]

  print(nestItems); // Prints: true
  print(ys); // Prints: [1, 2, 3, 4]
  print(items15); // Prints: [10, 20, 30, 40, 21, 31, 41, 32, 42]
}
