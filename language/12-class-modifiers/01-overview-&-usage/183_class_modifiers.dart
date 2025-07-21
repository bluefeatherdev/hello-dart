/// Dart Class Modifiers: Overview & usage

/// Class modifiers control how a class or mixin can be used, 
/// both [from within its own library], and from outside the library 
/// where it's defined.

/// Modifier keywords come before a class or mixin declaration. 
/// For example, writing `abstract class` defines an abstract class. 
/// The full set of modifiers that can appear before 
/// a class declaration include:
/// - `abstract`
/// - `base`
/// - `final`
/// - `interface`
/// - `sealed`
/// - `mixin`

/// Only the `base` modifier can appear before a mixin declaration. 
/// The modifiers do not apply to other declarations like `enum`, 
/// `typedef`, `extension`, or `extension type`.

/// When deciding whether to use class modifiers, 
/// consider the intended uses of the class and 
/// what behaviors the class needs to be able to rely on.

void main() {
  print('Hello, Dart!');
}
