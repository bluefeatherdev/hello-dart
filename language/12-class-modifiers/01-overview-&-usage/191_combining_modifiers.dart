/// Dart Class Modifiers: Overview & usage

/// You can combine some modifiers for layered restrictions. 
/// A class declaration can be, in order:

/// - (Optional) `abstract`, describing whether the class can contain 
///   abstract members and prevents instantiation.
/// - (Optional) One of `base`, `interface`, `final` or `sealed`, 
///   describing restrictions on other libraries subtyping the class.
/// - (Optional) `mixin`, describing whether the declaration 
///   can be mixed in.
/// - The `class` keyword itself.

/// You can't combine some modifiers because they are contradictory, 
/// redundant, or otherwise mutually exclusive:

/// - `abstract` with `sealed`. A [sealed] class is implicitly [abstract].
/// - `interface`, `final` or `sealed` with `mixin`. 
///   These access modifiers prevent [mixing in].

/// For further guidance on how class modifiers can be combined, 
/// check out the [Class modifiers reference].
void main() {
  print('Hello, Dart!');
}
