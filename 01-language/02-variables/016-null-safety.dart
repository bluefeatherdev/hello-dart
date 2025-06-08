// Null Safety in Dart
void main() {
  String? a;  // a can be null or a String
  String b;   // b bust be a String
  b = 'Bob';  // and cannot be null

  print(a); // output: null
  print(b); // output: Bob
}
