// Dart Functions: Functions

/// Though you name most functions, such as `main()` or `printElement()`, 
/// you can also create functions without names. 
/// These functions are called [anonymous functions], [lambdas], or [closures].
/// ```dart
/// ([[Type] param1[, ...]]) {
///   codeBlock;
/// }
/// ```

void main() {  
  /// The following example defines an anonymous function with an untyped parameter, 
  /// `item`. The anonymous function passes it to the `map` function. The `map` function, 
  /// invoked for each item in the list, converts each string to uppercase. 
  /// Then, the anonymous function passed to `forEach`, prints each converted 
  /// string with its length.
  const list = ['apples', 'bananas', 'oranges'];

  var uppercaseList = list.map((item) {
    return item.toUpperCase();
  }).toList();
  // Convert to list after mapping

  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  }

  /// If the function contains only a single expression or return statement, 
  /// you can shorten it using [arrow notation]:
  var uppercaseList2 = list.map((item) => item.toUpperCase()).toList();
  uppercaseList2.forEach((item) => print('$item: ${item.length}'));
}
