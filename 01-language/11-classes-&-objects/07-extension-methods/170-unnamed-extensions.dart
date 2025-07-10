/// Dart Classes & Objects: Extension methods

/// When declaring an extension, you can omit the name. 
/// Unnamed extensions are visible only in the library 
/// where they're declared. Since they don't have a name, 
/// they can't be explicitly applied to resolve [API conflicts].

extension on String {
  bool get isBlank => trim().isEmpty;
}

/// You can invoke an unnamed extension's static members 
/// only within the extension declaration.

void main() {
  print(''.isBlank);  // true
  print(' '.isBlank); // true
  print('hello'.isBlank); // false
}
