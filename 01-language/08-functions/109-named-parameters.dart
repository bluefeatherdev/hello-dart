// Dart Functions: Functions


/// When defining a function, use `{param1, param2, …}` to specify 
/// named parameters. If you don't provide a default value 
/// or mark a named parameter as `required`, their types must be 
/// nullable as their default value will be `null`:

/// Sets the [bold] and [hidden] flags ...
void enabledFlags({bool? bold, bool? hidden}) {
  print(<bool?>[bold, hidden]);
}

/// To define a default value for a named parameter besides `null`, 
/// use `=` to specify a default value. The specified value must be 
/// a compile-time constant. For example:

/// Sets the [bold] and [hidden] flags ...
void enabledFlags2({bool bold = false, bool hidden = false}) {
  print(<bool>[bold, hidden]);
}

void main() {  
  /// Named parameters are optional 
  /// unless they're explicitly marked as [required].
  
  /// When calling a function, you can specify named arguments 
  /// using `paramName: value`. For example:
  enabledFlags(bold: true, hidden: false);

  // bold will be true; hidden will be false.
  enabledFlags2(bold: true);

  /// If you instead want a named parameter to be mandatory, 
  /// requiring callers to provide a value for the parameter, 
  /// annotate them with `required`:
  /// `const Scrollbar({super.key, required Widget child});`
  
  /// A parameter marked as `required` can still be nullable:
  /// `const Scrollbar({super.key, required Widget? child});`
  

  /// You might want to place positional arguments first, 
  /// but Dart doesn't require it. Dart allows named arguments 
  /// to be placed anywhere in the argument list when it suits your API:
  /// ```dart
  /// repeat(times: 2, () {
  ///   ...
  /// }); 
  /// ```
}
