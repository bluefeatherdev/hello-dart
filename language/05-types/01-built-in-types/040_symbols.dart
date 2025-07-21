// Types: Built-in types in Dart
void main() {
  /// To get the symbol for an identifier, use a symbol literal, 
  /// which is just [#] followed by the identifier:
  print(#mySymbol); // Output: Symbol("mySymbol")

  // Or use the Symbol class constructor:
  Symbol mySymbol = Symbol('mySymbol');
  print(mySymbol);  // Output: Symbol("mySymbol")
}
