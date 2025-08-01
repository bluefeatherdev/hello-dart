/// Dart Null Safety: [Understanding null safety]

/// Having smarter reachability analysis and knowing where `null` 
/// can flow through your program helps ensure that you [add] code 
/// to handle `null`. But we can also use that same analysis to 
/// detect code that you [don't] need. Before null safety, if you 
/// wrote something like:

/// Using null safety:
/// ```dart
/// String checkList(List<Object> list) {
///   // The receiver can't be null, 
///   // so the null-aware operator '?.' is unnecessary.
///   // Try replacing the operator '?.' with '.'
///   if (list?.isEmpty ?? false) {
///     return 'Got nothing';
///   }
///   return 'Got something';
/// }
/// ```

/// Dart had no way of knowing if that null-aware `?.` operator is useful 
/// or not. For all it knows, you could pass `null` to the function. 
/// But in null-safe Dart, if you have annotated that function with 
/// the now non-nullable `List` type, then it knows `list` will never be `null`. 
/// That implies the `?.` will never do anything useful and you can and 
/// should just use `.`.


/// And, of course, this plays with non-nullable type promotion too. 
/// Once a variable has been promoted to a non-nullable type, 
/// you get a warning if you redundantly check it again for `null`:

String checkList(List<Object>? list) {
  if (list == null) return 'No list';
  /// The receiver can't be `null`, 
  /// so the null-aware operator `?.` is unnecessary.
  /// Try replacing the operator `?.` with `.`
  /// ```dart
  /// if (list?.isEmpty ?? false) {
  ///   return 'Empty list';
  /// }
  /// ```
  if (list.isEmpty) return 'Empty list';
  return 'Got something';
}

void main() {
  print(checkList(null)); // No list
  print(checkList(<Object>[])); // Empty list
  print(checkList([23, 'hello', 15.19, true])); // Got something
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
