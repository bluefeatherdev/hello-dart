// Types: Built-in types in Dart
import 'package:characters/characters.dart';

void main() {
  /// If you need to read or write individual Unicode characters, 
  /// use the [characters] getter defined on 
  /// String by the characters package. 
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length -1)}');
  print('The last character: ${hi.characters.last}');
}
