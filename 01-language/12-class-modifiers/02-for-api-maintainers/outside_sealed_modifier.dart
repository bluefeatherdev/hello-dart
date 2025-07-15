/// Dart Class Modifiers: Class modifiers for API maintainers

/// The last modifier, `sealed`, is special. 
/// It exists primarily to enable [exhaustiveness checking] 
/// in pattern matching. If a switch has cases for every direct subtype 
/// of a type marked `sealed`, then the compiler knows the switch 
/// is exhaustive.

/// The second restriction is similar to `final`. 
/// Like `final`, it means that a class marked `sealed` can't be 
/// directly extended, implemented, or mixed in outside 
/// of the library where it's declared. But, unlike `base` and `final`, 
/// there is no transitive restriction:
import '197_the_sealed_modifier.dart';

/// ERROR: Can't be extended [OUTSIDE] its library
/// `class Bad extends Amigo {}`

/// OK: But its Subclasses can be extended [OUTSIDE] its library
class OtherLucky extends Lucky {}
class OtherDusty extends Dusty {}

/// Of course, if you want the subtypes of your sealed type 
/// to be restricted as well, you can get that by marking them 
/// using `interface`, `base`, `final`, or `sealed`.
void main() {
  Amigo otherLucky = OtherLucky();
  Amigo otherDusty = OtherDusty();

  print(otherLucky.runtimeType);  // OtherLucky
  print(lastName(otherLucky));  // Day

  print(otherDusty.runtimeType);  // OtherDusty
  print(lastName(otherDusty));  // Bottoms
}
