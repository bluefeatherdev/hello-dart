/// Dart Classes & Objects: Extension types

/// Declaring an extension type member that shares a name 
/// with a member of a supertype is [not] an override relationship 
/// like it is between classes, but rather a [redeclaration]. 
/// An extension type member declaration [completely replaces] 
/// any supertype member with the same name. It's not possible 
/// to provide an alternative implementation for the same function.

/// You can use the `@redeclare` annotation from `package:meta` 
/// to tell the compiler you are [knowingly] choosing to use 
/// the same name as a supertype's member. The analyzer will 
/// then warn you if that's not actually true, for example, 
/// if one of the names is mistyped.
import 'package:meta/meta.dart';

extension type MyString(String _) implements String {
  // Replaces 'String.operator[]'.
  @redeclare
  int operator [](int index) => codeUnitAt(index);
}

/// You can also enable the lint `annotate_redeclares` 
/// to get a warning if you declare an extension type method 
/// that hides a superinterface member and `isn't` annotated with `@redeclare`.
void main() {
  var text = MyString('I love you!');

  // Using the operator [] redeclared.
  print(text[1]); // Prints the UTF-16 code of the second character: '¡'

  // You can verify indirect access to index as well.
  for (int i = 0; i < text.length; i++) {
    print('${text[i]} : ${String.fromCharCode(text[i])}');
  }

  // Access to the original string member, 
  // since the extension implements it.
  print(text.toUpperCase());  // I LOVE YOU!
}
