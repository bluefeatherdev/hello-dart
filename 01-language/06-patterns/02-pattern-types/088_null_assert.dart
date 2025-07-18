// Dart Patterns: Pattern types
void main() {
  /// Null-assert patterns match first if the object is not null, 
  /// then on the value. They permit non-null values to flow through, 
  /// but [throw] if the matched value is null.
  /// `subpattern!`
  
  /// To ensure [null] values are not silently treated as match failures, 
  /// use a null-assert pattern while matching:
  /// ```dart
  /// List<String?> row = ['user', null];
  /// switch (row) {
  ///   case ['user', var name!]:
  ///   // 'name' is a non-nullable string here.
  /// }
  /// ```
  
  /// To eliminate [null] values from variable declaration patterns, 
  /// use the null-assert pattern:
  (int?, int?) position = (2, 3);
  var (x!, y!) = position;
  print(x); // Prints: 2
  print(y); // Prints: 3
  print(position);  // Prints: (2, 3)
}
