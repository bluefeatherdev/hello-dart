/// Dart Classes & Objects: Mixins

/// A `mixin` declaration defines a mixin. 
/// A `class` declaration defines a class. 
/// A `mixin class` declaration defines a class 
/// that is usable as both a regular class and a mixin, 
/// with the same name and the same type.
mixin class Musician {
  // ...
}

class Novice with Musician {  // Use Musician as a mixin
  // ...
}

class Expert extends Musician { // Use Musician as a class
  // ...
}

void main() {
  /// Any restrictions that apply to classes or mixins also apply to mixin classes:
  /// - Mixins can't have `extends` or `with` clauses, so neither can a `mixin class`.
  /// - Classes can't have an `on` clause, so neither can a `mixin class`.
  print('Hello, Dart!');
}
