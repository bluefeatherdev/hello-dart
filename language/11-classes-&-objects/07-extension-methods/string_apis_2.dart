/// Dart Classes & Objects: Extension methods

/// Extensions can define not just methods, 
/// but also other members such as getter, setters, and operators. 
/// Also, extensions can have names, which can be helpful 
/// if an API conflict arises.

/// Here's how you might implement the extension method `parseInt()`, 
/// using an extension (named `NumberParsing2`) that operates on strings:
extension NumberParsing2 on String {
  int parseInt() {
    return int.parse(this);
  }
}
