/// Dart Null Safety: [Frequently asked questions]

/// How should I migrate a `built_value` class?:
/// Getters that were annotated `@nullable` should instead 
/// have nullable types; then remove all `@nullable` annotations. 
/// For example:
/// 
/// ```dart
/// class Counter {
///   int _count;
///   @nullable
///   int get count;
/// }
/// ```

/// becomes:
class Counter {
  int? _count;
  int? get count => _count; //  Variable initialized with ?
}

/// Getters that were [not] marked `@nullable` should not have 
/// nullable types, even if the migration tool suggests them. 
/// Add `!` hints as needed then rerun the analysis.

void main() {
  var counter = Counter();
  print(counter.count); // null
}
