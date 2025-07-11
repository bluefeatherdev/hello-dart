/// Dart Classes & Objects: Extension types

/// Declare members in the body of an extension type 
/// to define its interface the same way you would for class members. 
/// Extension type members can be methods, getters, setters, or operators 
/// (non-[external instance variables] and [abstract members] are not allowed):
extension type NumberE(int value) {
  // Operator:
  NumberE operator +(NumberE other) =>
    NumberE(value + other.value);
  // Getter:
  NumberE get myNum => this;
  // Method:
  bool isValid() => !value.isNegative;

  /// Interface members of the representation type 
  /// are not interface members of the extension type [by default].
}

void main() {
  print(NumberE(2) + NumberE(3)); // 5
  print(NumberE(6).myNum);  // 6
  print(NumberE(-1).isValid()); // false
}
